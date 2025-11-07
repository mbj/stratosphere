module Stratosphere.SES.ConfigurationSet.TrackingOptionsProperty (
        TrackingOptionsProperty(..), mkTrackingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrackingOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-trackingoptions.html>
    TrackingOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-trackingoptions.html#cfn-ses-configurationset-trackingoptions-customredirectdomain>
                             customRedirectDomain :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-trackingoptions.html#cfn-ses-configurationset-trackingoptions-httpspolicy>
                             httpsPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrackingOptionsProperty :: TrackingOptionsProperty
mkTrackingOptionsProperty
  = TrackingOptionsProperty
      {haddock_workaround_ = (), customRedirectDomain = Prelude.Nothing,
       httpsPolicy = Prelude.Nothing}
instance ToResourceProperties TrackingOptionsProperty where
  toResourceProperties TrackingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.TrackingOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRedirectDomain" Prelude.<$> customRedirectDomain,
                            (JSON..=) "HttpsPolicy" Prelude.<$> httpsPolicy])}
instance JSON.ToJSON TrackingOptionsProperty where
  toJSON TrackingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRedirectDomain" Prelude.<$> customRedirectDomain,
               (JSON..=) "HttpsPolicy" Prelude.<$> httpsPolicy]))
instance Property "CustomRedirectDomain" TrackingOptionsProperty where
  type PropertyType "CustomRedirectDomain" TrackingOptionsProperty = Value Prelude.Text
  set newValue TrackingOptionsProperty {..}
    = TrackingOptionsProperty
        {customRedirectDomain = Prelude.pure newValue, ..}
instance Property "HttpsPolicy" TrackingOptionsProperty where
  type PropertyType "HttpsPolicy" TrackingOptionsProperty = Value Prelude.Text
  set newValue TrackingOptionsProperty {..}
    = TrackingOptionsProperty {httpsPolicy = Prelude.pure newValue, ..}