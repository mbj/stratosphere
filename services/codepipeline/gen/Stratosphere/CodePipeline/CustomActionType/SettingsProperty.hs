module Stratosphere.CodePipeline.CustomActionType.SettingsProperty (
        SettingsProperty(..), mkSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html>
    SettingsProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-entityurltemplate>
                      entityUrlTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-executionurltemplate>
                      executionUrlTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-revisionurltemplate>
                      revisionUrlTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-thirdpartyconfigurationurl>
                      thirdPartyConfigurationUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSettingsProperty :: SettingsProperty
mkSettingsProperty
  = SettingsProperty
      {haddock_workaround_ = (), entityUrlTemplate = Prelude.Nothing,
       executionUrlTemplate = Prelude.Nothing,
       revisionUrlTemplate = Prelude.Nothing,
       thirdPartyConfigurationUrl = Prelude.Nothing}
instance ToResourceProperties SettingsProperty where
  toResourceProperties SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::CustomActionType.Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EntityUrlTemplate" Prelude.<$> entityUrlTemplate,
                            (JSON..=) "ExecutionUrlTemplate" Prelude.<$> executionUrlTemplate,
                            (JSON..=) "RevisionUrlTemplate" Prelude.<$> revisionUrlTemplate,
                            (JSON..=) "ThirdPartyConfigurationUrl"
                              Prelude.<$> thirdPartyConfigurationUrl])}
instance JSON.ToJSON SettingsProperty where
  toJSON SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EntityUrlTemplate" Prelude.<$> entityUrlTemplate,
               (JSON..=) "ExecutionUrlTemplate" Prelude.<$> executionUrlTemplate,
               (JSON..=) "RevisionUrlTemplate" Prelude.<$> revisionUrlTemplate,
               (JSON..=) "ThirdPartyConfigurationUrl"
                 Prelude.<$> thirdPartyConfigurationUrl]))
instance Property "EntityUrlTemplate" SettingsProperty where
  type PropertyType "EntityUrlTemplate" SettingsProperty = Value Prelude.Text
  set newValue SettingsProperty {..}
    = SettingsProperty {entityUrlTemplate = Prelude.pure newValue, ..}
instance Property "ExecutionUrlTemplate" SettingsProperty where
  type PropertyType "ExecutionUrlTemplate" SettingsProperty = Value Prelude.Text
  set newValue SettingsProperty {..}
    = SettingsProperty
        {executionUrlTemplate = Prelude.pure newValue, ..}
instance Property "RevisionUrlTemplate" SettingsProperty where
  type PropertyType "RevisionUrlTemplate" SettingsProperty = Value Prelude.Text
  set newValue SettingsProperty {..}
    = SettingsProperty
        {revisionUrlTemplate = Prelude.pure newValue, ..}
instance Property "ThirdPartyConfigurationUrl" SettingsProperty where
  type PropertyType "ThirdPartyConfigurationUrl" SettingsProperty = Value Prelude.Text
  set newValue SettingsProperty {..}
    = SettingsProperty
        {thirdPartyConfigurationUrl = Prelude.pure newValue, ..}