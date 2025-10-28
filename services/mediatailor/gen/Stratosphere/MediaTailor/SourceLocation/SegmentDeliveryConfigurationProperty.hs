module Stratosphere.MediaTailor.SourceLocation.SegmentDeliveryConfigurationProperty (
        SegmentDeliveryConfigurationProperty(..),
        mkSegmentDeliveryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SegmentDeliveryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-segmentdeliveryconfiguration.html>
    SegmentDeliveryConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-segmentdeliveryconfiguration.html#cfn-mediatailor-sourcelocation-segmentdeliveryconfiguration-baseurl>
                                          baseUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-segmentdeliveryconfiguration.html#cfn-mediatailor-sourcelocation-segmentdeliveryconfiguration-name>
                                          name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentDeliveryConfigurationProperty ::
  SegmentDeliveryConfigurationProperty
mkSegmentDeliveryConfigurationProperty
  = SegmentDeliveryConfigurationProperty
      {haddock_workaround_ = (), baseUrl = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties SegmentDeliveryConfigurationProperty where
  toResourceProperties SegmentDeliveryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::SourceLocation.SegmentDeliveryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseUrl" Prelude.<$> baseUrl,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON SegmentDeliveryConfigurationProperty where
  toJSON SegmentDeliveryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseUrl" Prelude.<$> baseUrl,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "BaseUrl" SegmentDeliveryConfigurationProperty where
  type PropertyType "BaseUrl" SegmentDeliveryConfigurationProperty = Value Prelude.Text
  set newValue SegmentDeliveryConfigurationProperty {..}
    = SegmentDeliveryConfigurationProperty
        {baseUrl = Prelude.pure newValue, ..}
instance Property "Name" SegmentDeliveryConfigurationProperty where
  type PropertyType "Name" SegmentDeliveryConfigurationProperty = Value Prelude.Text
  set newValue SegmentDeliveryConfigurationProperty {..}
    = SegmentDeliveryConfigurationProperty
        {name = Prelude.pure newValue, ..}