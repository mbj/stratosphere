module Stratosphere.Pinpoint.Campaign.CampaignInAppMessageProperty (
        module Exports, CampaignInAppMessageProperty(..),
        mkCampaignInAppMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.InAppMessageContentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignInAppMessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigninappmessage.html>
    CampaignInAppMessageProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigninappmessage.html#cfn-pinpoint-campaign-campaigninappmessage-content>
                                  content :: (Prelude.Maybe [InAppMessageContentProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigninappmessage.html#cfn-pinpoint-campaign-campaigninappmessage-customconfig>
                                  customConfig :: (Prelude.Maybe JSON.Object),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigninappmessage.html#cfn-pinpoint-campaign-campaigninappmessage-layout>
                                  layout :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaignInAppMessageProperty :: CampaignInAppMessageProperty
mkCampaignInAppMessageProperty
  = CampaignInAppMessageProperty
      {haddock_workaround_ = (), content = Prelude.Nothing,
       customConfig = Prelude.Nothing, layout = Prelude.Nothing}
instance ToResourceProperties CampaignInAppMessageProperty where
  toResourceProperties CampaignInAppMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.CampaignInAppMessage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Content" Prelude.<$> content,
                            (JSON..=) "CustomConfig" Prelude.<$> customConfig,
                            (JSON..=) "Layout" Prelude.<$> layout])}
instance JSON.ToJSON CampaignInAppMessageProperty where
  toJSON CampaignInAppMessageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Content" Prelude.<$> content,
               (JSON..=) "CustomConfig" Prelude.<$> customConfig,
               (JSON..=) "Layout" Prelude.<$> layout]))
instance Property "Content" CampaignInAppMessageProperty where
  type PropertyType "Content" CampaignInAppMessageProperty = [InAppMessageContentProperty]
  set newValue CampaignInAppMessageProperty {..}
    = CampaignInAppMessageProperty
        {content = Prelude.pure newValue, ..}
instance Property "CustomConfig" CampaignInAppMessageProperty where
  type PropertyType "CustomConfig" CampaignInAppMessageProperty = JSON.Object
  set newValue CampaignInAppMessageProperty {..}
    = CampaignInAppMessageProperty
        {customConfig = Prelude.pure newValue, ..}
instance Property "Layout" CampaignInAppMessageProperty where
  type PropertyType "Layout" CampaignInAppMessageProperty = Value Prelude.Text
  set newValue CampaignInAppMessageProperty {..}
    = CampaignInAppMessageProperty {layout = Prelude.pure newValue, ..}