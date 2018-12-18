package ibe.hokuto.testplatformview;

import android.content.Context;
import io.flutter.plugin.common.*;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class TestViewFactory extends PlatformViewFactory {

    public TestViewFactory() {
        super(StandardMessageCodec.INSTANCE);
    }

    @Override
    public PlatformView create(Context context, int id, Object o) {
        return new TestView(context, id);
    }

}
