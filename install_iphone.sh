

cd "/HyperFiction//HyperFacebook/project/"
rm -rf "obj"
echo "compiling for armv6"
haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_CLANG -DOBJC_ARC
echo "compiling for armv7"
haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7 -DHXCPP_CLANG -DOBJC_ARC
echo "compiling for simulator"
haxelib run hxcpp Build.xml -Diphonesim -DHXCPP_CLANG -DOBJC_ARC
echo "Finished compiling ! \n"

#zip and install
cd "/HyperFiction/"
rm -rf hypfacebook.zip
zip -r hypfacebook.zip HyperFacebook
haxelib test hypfacebook.zip

echo "Finished installing!"