package com.icdatinnovations.primary_school_graduates
import android.app.Activity
import android.content.Context
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.text.SpannableString
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.TextView
import androidx.annotation.NonNull
import androidx.annotation.Nullable
import com.airbnb.lottie.LottieAnimationView
import com.airbnb.lottie.LottieDrawable
import io.flutter.embedding.android.SplashScreen
import kotlinx.coroutines.*
import java.lang.Runnable
import java.time.Duration
import java.util.*
import java.util.concurrent.Future
import kotlin.concurrent.schedule
import kotlin.random.Random

class SplashView : SplashScreen {

    private val nullParent: ViewGroup? = null

//    var textView: TextView = view.findViewById(R.id.textView)

//
//    private val lottieRawIds = arrayOf(
//            R.raw.offline_teaching,
//    )

    override fun createSplashView(context: Context, savedInstanceState: Bundle?): View {

//        val alert: AlertDialog.Builder = Builder(thisActivity)
////        val input = EditText(thisActivity)
//        input.setSingleLine()
//        val container = FrameLayout(thisActivity)
//        val paramsS = FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
//                ViewGroup.LayoutParams.WRAP_CONTENT)
//        params.leftMargin = convertDpToPx(100) // remember to scale correctly
//
//        input.setLayoutParams(params)
//        container.addView(input)
//        alert.setTitle("by...")
//        alert.setMessage("test message")
//        alert.setView(container)







//        val lottieView = LottieAnimationView(context)
//        lottieView.apply {
//            repeatMode = LottieDrawable.RESTART
//            repeatCount = LottieDrawable.INFINITE
//            setAnimation(lottieRawIds[Random(System.currentTimeMillis()).nextInt(0,lottieRawIds.size)])
//        }.playAnimation()
//        (context as Activity).window.setBackgroundDrawable(ColorDrawable(Color.WHITE))
//
//        val layoutParamsLottie = FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,ViewGroup.LayoutParams.WRAP_CONTENT)
//                .apply {
//                    gravity = Gravity.CENTER
//
//                }
        val rootView = FrameLayout(context)
////        val input = TextView(context)
////        input.setText("yESSSSSSS")
////        input.setTextColor(Color.parseColor("#000000"))
////        input.setSingleLine()
//        val params = FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
//                ViewGroup.LayoutParams.WRAP_CONTENT)
//        params.leftMargin = convertDpToPx(100) // remember to scale correctly

//        input.layoutParams = params
        rootView.apply {
            layoutParams = FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,ViewGroup.LayoutParams.MATCH_PARENT)

            setBackgroundColor(Color.parseColor("#161D3B"))

//            addView(lottieView, layoutParamsLottie)
//            addView(lottieView)
            addView(LayoutInflater.from(context).inflate(R.layout.splash_view, nullParent, false))
//            rootView.addView(input)
        }
//        updateSecond(textView)
        return rootView
    }


//    override fun createSplashView(context: Context, savedInstanceState: Bundle?): View? =
//            LayoutInflater.from(context).inflate(R.layout.splash_view, nullParent, false)



    override fun transitionToFlutter(onTransitionComplete: Runnable) {
//        onTransitionComplete.run()
        Handler(Looper.getMainLooper()).postDelayed(onTransitionComplete,2500)


    }



}