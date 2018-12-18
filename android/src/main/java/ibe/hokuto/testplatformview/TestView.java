package ibe.hokuto.testplatformview;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import io.flutter.plugin.platform.PlatformView;

public class TestView implements PlatformView {

    private final TextView textView;

    TestView(Context context, int id){
        textView = new TextView(context);
    }

    @Override
    public View getView() {
        textView.setBackgroundColor(200);
        textView.setText("hello, Platform View");
        textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 25);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v){
                StringBuffer info = new StringBuffer("Test onTouchEvent");
                textView.setText(info);
            }

        });


        return textView;
    }

    @Override
    public void dispose() {}
}
