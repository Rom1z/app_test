package com.designdemo.uaha.view.demo

import android.os.Bundle
import com.google.android.material.bottomnavigation.BottomNavigationView
import androidx.appcompat.app.AppCompatActivity
import com.support.android.designlibdemo.R
import kotlinx.android.synthetic.main.activity_bottom_nav.*

class BottomNavActivity : AppCompatActivity() {

    private val mOnNavigationItemSelectedListener = BottomNavigationView.OnNavigationItemSelectedListener { item ->
        when (item.itemId) {
            R.id.nav_bottom_opt1 -> {
                message.setText(R.string.bottomnavtext1)
                return@OnNavigationItemSelectedListener true
            }
            R.id.nav_bottom_opt2 -> {
                message.setText(R.string.bottomnavtext2)
                return@OnNavigationItemSelectedListener true
            }
            R.id.nav_bottom_opt3 -> {
                message.setText(R.string.bottomnavtext3)
                return@OnNavigationItemSelectedListener true
            }
        }
        false
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_bottom_nav)

        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener)
        message.setText(R.string.bottomnavtext1)
    }
}
