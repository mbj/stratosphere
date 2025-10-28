module Stratosphere.SES.ConfigurationSet.TrackingOptionsProperty (
        TrackingOptionsProperty(..), mkTrackingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrackingOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-trackingoptions.html>
    TrackingOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-trackingoptions.html#cfn-ses-configurationset-trackingoptions-customredirectdomain>
                             customRedirectDomain :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrackingOptionsProperty :: TrackingOptionsProperty
mkTrackingOptionsProperty
  = TrackingOptionsProperty {customRedirectDomain = Prelude.Nothing}
instance ToResourceProperties TrackingOptionsProperty where
  toResourceProperties TrackingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.TrackingOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRedirectDomain"
                              Prelude.<$> customRedirectDomain])}
instance JSON.ToJSON TrackingOptionsProperty where
  toJSON TrackingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRedirectDomain"
                 Prelude.<$> customRedirectDomain]))
instance Property "CustomRedirectDomain" TrackingOptionsProperty where
  type PropertyType "CustomRedirectDomain" TrackingOptionsProperty = Value Prelude.Text
  set newValue TrackingOptionsProperty {}
    = TrackingOptionsProperty
        {customRedirectDomain = Prelude.pure newValue, ..}