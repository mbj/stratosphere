module Stratosphere.WorkSpacesWeb.DataProtectionSettings.CustomPatternProperty (
        CustomPatternProperty(..), mkCustomPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPatternProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-custompattern.html>
    CustomPatternProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-custompattern.html#cfn-workspacesweb-dataprotectionsettings-custompattern-keywordregex>
                           keywordRegex :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-custompattern.html#cfn-workspacesweb-dataprotectionsettings-custompattern-patterndescription>
                           patternDescription :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-custompattern.html#cfn-workspacesweb-dataprotectionsettings-custompattern-patternname>
                           patternName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-custompattern.html#cfn-workspacesweb-dataprotectionsettings-custompattern-patternregex>
                           patternRegex :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPatternProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomPatternProperty
mkCustomPatternProperty patternName patternRegex
  = CustomPatternProperty
      {haddock_workaround_ = (), patternName = patternName,
       patternRegex = patternRegex, keywordRegex = Prelude.Nothing,
       patternDescription = Prelude.Nothing}
instance ToResourceProperties CustomPatternProperty where
  toResourceProperties CustomPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::DataProtectionSettings.CustomPattern",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PatternName" JSON..= patternName,
                            "PatternRegex" JSON..= patternRegex]
                           (Prelude.catMaybes
                              [(JSON..=) "KeywordRegex" Prelude.<$> keywordRegex,
                               (JSON..=) "PatternDescription" Prelude.<$> patternDescription]))}
instance JSON.ToJSON CustomPatternProperty where
  toJSON CustomPatternProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PatternName" JSON..= patternName,
               "PatternRegex" JSON..= patternRegex]
              (Prelude.catMaybes
                 [(JSON..=) "KeywordRegex" Prelude.<$> keywordRegex,
                  (JSON..=) "PatternDescription" Prelude.<$> patternDescription])))
instance Property "KeywordRegex" CustomPatternProperty where
  type PropertyType "KeywordRegex" CustomPatternProperty = Value Prelude.Text
  set newValue CustomPatternProperty {..}
    = CustomPatternProperty {keywordRegex = Prelude.pure newValue, ..}
instance Property "PatternDescription" CustomPatternProperty where
  type PropertyType "PatternDescription" CustomPatternProperty = Value Prelude.Text
  set newValue CustomPatternProperty {..}
    = CustomPatternProperty
        {patternDescription = Prelude.pure newValue, ..}
instance Property "PatternName" CustomPatternProperty where
  type PropertyType "PatternName" CustomPatternProperty = Value Prelude.Text
  set newValue CustomPatternProperty {..}
    = CustomPatternProperty {patternName = newValue, ..}
instance Property "PatternRegex" CustomPatternProperty where
  type PropertyType "PatternRegex" CustomPatternProperty = Value Prelude.Text
  set newValue CustomPatternProperty {..}
    = CustomPatternProperty {patternRegex = newValue, ..}