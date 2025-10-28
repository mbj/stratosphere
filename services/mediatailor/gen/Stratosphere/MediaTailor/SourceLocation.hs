module Stratosphere.MediaTailor.SourceLocation (
        module Exports, SourceLocation(..), mkSourceLocation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.SourceLocation.AccessConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.SourceLocation.DefaultSegmentDeliveryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.SourceLocation.HttpConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.SourceLocation.SegmentDeliveryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SourceLocation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html>
    SourceLocation {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html#cfn-mediatailor-sourcelocation-accessconfiguration>
                    accessConfiguration :: (Prelude.Maybe AccessConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html#cfn-mediatailor-sourcelocation-defaultsegmentdeliveryconfiguration>
                    defaultSegmentDeliveryConfiguration :: (Prelude.Maybe DefaultSegmentDeliveryConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html#cfn-mediatailor-sourcelocation-httpconfiguration>
                    httpConfiguration :: HttpConfigurationProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html#cfn-mediatailor-sourcelocation-segmentdeliveryconfigurations>
                    segmentDeliveryConfigurations :: (Prelude.Maybe [SegmentDeliveryConfigurationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html#cfn-mediatailor-sourcelocation-sourcelocationname>
                    sourceLocationName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-sourcelocation.html#cfn-mediatailor-sourcelocation-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceLocation ::
  HttpConfigurationProperty -> Value Prelude.Text -> SourceLocation
mkSourceLocation httpConfiguration sourceLocationName
  = SourceLocation
      {haddock_workaround_ = (), httpConfiguration = httpConfiguration,
       sourceLocationName = sourceLocationName,
       accessConfiguration = Prelude.Nothing,
       defaultSegmentDeliveryConfiguration = Prelude.Nothing,
       segmentDeliveryConfigurations = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SourceLocation where
  toResourceProperties SourceLocation {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::SourceLocation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HttpConfiguration" JSON..= httpConfiguration,
                            "SourceLocationName" JSON..= sourceLocationName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessConfiguration" Prelude.<$> accessConfiguration,
                               (JSON..=) "DefaultSegmentDeliveryConfiguration"
                                 Prelude.<$> defaultSegmentDeliveryConfiguration,
                               (JSON..=) "SegmentDeliveryConfigurations"
                                 Prelude.<$> segmentDeliveryConfigurations,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SourceLocation where
  toJSON SourceLocation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HttpConfiguration" JSON..= httpConfiguration,
               "SourceLocationName" JSON..= sourceLocationName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessConfiguration" Prelude.<$> accessConfiguration,
                  (JSON..=) "DefaultSegmentDeliveryConfiguration"
                    Prelude.<$> defaultSegmentDeliveryConfiguration,
                  (JSON..=) "SegmentDeliveryConfigurations"
                    Prelude.<$> segmentDeliveryConfigurations,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessConfiguration" SourceLocation where
  type PropertyType "AccessConfiguration" SourceLocation = AccessConfigurationProperty
  set newValue SourceLocation {..}
    = SourceLocation {accessConfiguration = Prelude.pure newValue, ..}
instance Property "DefaultSegmentDeliveryConfiguration" SourceLocation where
  type PropertyType "DefaultSegmentDeliveryConfiguration" SourceLocation = DefaultSegmentDeliveryConfigurationProperty
  set newValue SourceLocation {..}
    = SourceLocation
        {defaultSegmentDeliveryConfiguration = Prelude.pure newValue, ..}
instance Property "HttpConfiguration" SourceLocation where
  type PropertyType "HttpConfiguration" SourceLocation = HttpConfigurationProperty
  set newValue SourceLocation {..}
    = SourceLocation {httpConfiguration = newValue, ..}
instance Property "SegmentDeliveryConfigurations" SourceLocation where
  type PropertyType "SegmentDeliveryConfigurations" SourceLocation = [SegmentDeliveryConfigurationProperty]
  set newValue SourceLocation {..}
    = SourceLocation
        {segmentDeliveryConfigurations = Prelude.pure newValue, ..}
instance Property "SourceLocationName" SourceLocation where
  type PropertyType "SourceLocationName" SourceLocation = Value Prelude.Text
  set newValue SourceLocation {..}
    = SourceLocation {sourceLocationName = newValue, ..}
instance Property "Tags" SourceLocation where
  type PropertyType "Tags" SourceLocation = [Tag]
  set newValue SourceLocation {..}
    = SourceLocation {tags = Prelude.pure newValue, ..}