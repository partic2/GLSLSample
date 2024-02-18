//vertex shader
#version 200

attribute highp vec3 attribute_name;

attribute mediump mat3 attribute_name;

uniform sampler2D uniform_name;

varying lowp vec4 varying_name;

void main()
{
  gl_Position = vec4(1,1,1,1);
}

//fragment shader

//android extension for eglImageKHR(Usually for camera and screeen projection)
#extension GL_OES_EGL_image_external 
uniform samplerExternalOES oesTex


varying mediump vec4 varying_name; 
void main() {
    gl_FragColor = texture2D(oesTex,varying_name.xy);
}