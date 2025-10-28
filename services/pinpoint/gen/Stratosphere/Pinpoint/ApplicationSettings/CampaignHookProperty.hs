module Stratosphere.Pinpoint.ApplicationSettings.CampaignHookProperty (
        CampaignHookProperty(..), mkCampaignHookProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignHookProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html>
    CampaignHookProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-lambdafunctionname>
                          lambdaFunctionName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-mode>
                          mode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-weburl>
                          webUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaignHookProperty :: CampaignHookProperty
mkCampaignHookProperty
  = CampaignHookProperty
      {lambdaFunctionName = Prelude.Nothing, mode = Prelude.Nothing,
       webUrl = Prelude.Nothing}
instance ToResourceProperties CampaignHookProperty where
  toResourceProperties CampaignHookProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::ApplicationSettings.CampaignHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LambdaFunctionName" Prelude.<$> lambdaFunctionName,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "WebUrl" Prelude.<$> webUrl])}
instance JSON.ToJSON CampaignHookProperty where
  toJSON CampaignHookProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LambdaFunctionName" Prelude.<$> lambdaFunctionName,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "WebUrl" Prelude.<$> webUrl]))
instance Property "LambdaFunctionName" CampaignHookProperty where
  type PropertyType "LambdaFunctionName" CampaignHookProperty = Value Prelude.Text
  set newValue CampaignHookProperty {..}
    = CampaignHookProperty
        {lambdaFunctionName = Prelude.pure newValue, ..}
instance Property "Mode" CampaignHookProperty where
  type PropertyType "Mode" CampaignHookProperty = Value Prelude.Text
  set newValue CampaignHookProperty {..}
    = CampaignHookProperty {mode = Prelude.pure newValue, ..}
instance Property "WebUrl" CampaignHookProperty where
  type PropertyType "WebUrl" CampaignHookProperty = Value Prelude.Text
  set newValue CampaignHookProperty {..}
    = CampaignHookProperty {webUrl = Prelude.pure newValue, ..}