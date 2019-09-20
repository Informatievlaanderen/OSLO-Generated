git config user.email "oslo@kb.vlaanderen.be"
git config user.name "Circle CI Builder"
git add .
git status
git commit -m "Applying changes from commit ${CIRCLE_SHA1}" --allow-empty
export TAG=`echo "${CIRCLE_SHA1}" | cut -c1-15`
git tag "${TAG}"
git push --force origin "${CIRCLE_BRANCH}"
git push --tags

