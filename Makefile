FOLDER ?= build/RCHub_DIY_X306

.PHONY: package

package:
	rm -rf $(FOLDER)
	rm -f $(FOLDER).zip

	mkdir -p $(FOLDER)
	
	cp -r X306/STL  $(FOLDER)/
	cp X306/*.txt   $(FOLDER)/
	cp X306/*.pdf   $(FOLDER)/
	
	cp DEMO.txt 	     $(FOLDER)/
	cp FEATURES.pdf    $(FOLDER)/
	cp USER_MANUAL.pdf $(FOLDER)/
	
	find "$(FOLDER)" -name ".DS_Store" -print0 | xargs -0 rm 

	(cd $(FOLDER) && zip -r ../RCHub_DIY_X306.zip .)
