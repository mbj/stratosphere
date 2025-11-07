module Stratosphere.MediaPackageV2.OriginEndpoint.DashBaseUrlProperty (
        DashBaseUrlProperty(..), mkDashBaseUrlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashBaseUrlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashbaseurl.html>
    DashBaseUrlProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashbaseurl.html#cfn-mediapackagev2-originendpoint-dashbaseurl-dvbpriority>
                         dvbPriority :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashbaseurl.html#cfn-mediapackagev2-originendpoint-dashbaseurl-dvbweight>
                         dvbWeight :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashbaseurl.html#cfn-mediapackagev2-originendpoint-dashbaseurl-servicelocation>
                         serviceLocation :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashbaseurl.html#cfn-mediapackagev2-originendpoint-dashbaseurl-url>
                         url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashBaseUrlProperty :: Value Prelude.Text -> DashBaseUrlProperty
mkDashBaseUrlProperty url
  = DashBaseUrlProperty
      {haddock_workaround_ = (), url = url,
       dvbPriority = Prelude.Nothing, dvbWeight = Prelude.Nothing,
       serviceLocation = Prelude.Nothing}
instance ToResourceProperties DashBaseUrlProperty where
  toResourceProperties DashBaseUrlProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashBaseUrl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "DvbPriority" Prelude.<$> dvbPriority,
                               (JSON..=) "DvbWeight" Prelude.<$> dvbWeight,
                               (JSON..=) "ServiceLocation" Prelude.<$> serviceLocation]))}
instance JSON.ToJSON DashBaseUrlProperty where
  toJSON DashBaseUrlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "DvbPriority" Prelude.<$> dvbPriority,
                  (JSON..=) "DvbWeight" Prelude.<$> dvbWeight,
                  (JSON..=) "ServiceLocation" Prelude.<$> serviceLocation])))
instance Property "DvbPriority" DashBaseUrlProperty where
  type PropertyType "DvbPriority" DashBaseUrlProperty = Value Prelude.Integer
  set newValue DashBaseUrlProperty {..}
    = DashBaseUrlProperty {dvbPriority = Prelude.pure newValue, ..}
instance Property "DvbWeight" DashBaseUrlProperty where
  type PropertyType "DvbWeight" DashBaseUrlProperty = Value Prelude.Integer
  set newValue DashBaseUrlProperty {..}
    = DashBaseUrlProperty {dvbWeight = Prelude.pure newValue, ..}
instance Property "ServiceLocation" DashBaseUrlProperty where
  type PropertyType "ServiceLocation" DashBaseUrlProperty = Value Prelude.Text
  set newValue DashBaseUrlProperty {..}
    = DashBaseUrlProperty {serviceLocation = Prelude.pure newValue, ..}
instance Property "Url" DashBaseUrlProperty where
  type PropertyType "Url" DashBaseUrlProperty = Value Prelude.Text
  set newValue DashBaseUrlProperty {..}
    = DashBaseUrlProperty {url = newValue, ..}