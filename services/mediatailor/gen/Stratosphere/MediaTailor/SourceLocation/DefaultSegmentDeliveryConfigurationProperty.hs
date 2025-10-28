module Stratosphere.MediaTailor.SourceLocation.DefaultSegmentDeliveryConfigurationProperty (
        DefaultSegmentDeliveryConfigurationProperty(..),
        mkDefaultSegmentDeliveryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultSegmentDeliveryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-defaultsegmentdeliveryconfiguration.html>
    DefaultSegmentDeliveryConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-defaultsegmentdeliveryconfiguration.html#cfn-mediatailor-sourcelocation-defaultsegmentdeliveryconfiguration-baseurl>
                                                 baseUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultSegmentDeliveryConfigurationProperty ::
  DefaultSegmentDeliveryConfigurationProperty
mkDefaultSegmentDeliveryConfigurationProperty
  = DefaultSegmentDeliveryConfigurationProperty
      {haddock_workaround_ = (), baseUrl = Prelude.Nothing}
instance ToResourceProperties DefaultSegmentDeliveryConfigurationProperty where
  toResourceProperties
    DefaultSegmentDeliveryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::SourceLocation.DefaultSegmentDeliveryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "BaseUrl" Prelude.<$> baseUrl])}
instance JSON.ToJSON DefaultSegmentDeliveryConfigurationProperty where
  toJSON DefaultSegmentDeliveryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "BaseUrl" Prelude.<$> baseUrl]))
instance Property "BaseUrl" DefaultSegmentDeliveryConfigurationProperty where
  type PropertyType "BaseUrl" DefaultSegmentDeliveryConfigurationProperty = Value Prelude.Text
  set newValue DefaultSegmentDeliveryConfigurationProperty {..}
    = DefaultSegmentDeliveryConfigurationProperty
        {baseUrl = Prelude.pure newValue, ..}