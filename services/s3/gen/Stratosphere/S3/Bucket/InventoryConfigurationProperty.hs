module Stratosphere.S3.Bucket.InventoryConfigurationProperty (
        module Exports, InventoryConfigurationProperty(..),
        mkInventoryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.DestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InventoryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html>
    InventoryConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-destination>
                                    destination :: DestinationProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-enabled>
                                    enabled :: (Value Prelude.Bool),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-id>
                                    id :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-includedobjectversions>
                                    includedObjectVersions :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-optionalfields>
                                    optionalFields :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-prefix>
                                    prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-schedulefrequency>
                                    scheduleFrequency :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInventoryConfigurationProperty ::
  DestinationProperty
  -> Value Prelude.Bool
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> InventoryConfigurationProperty
mkInventoryConfigurationProperty
  destination
  enabled
  id
  includedObjectVersions
  scheduleFrequency
  = InventoryConfigurationProperty
      {haddock_workaround_ = (), destination = destination,
       enabled = enabled, id = id,
       includedObjectVersions = includedObjectVersions,
       scheduleFrequency = scheduleFrequency,
       optionalFields = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties InventoryConfigurationProperty where
  toResourceProperties InventoryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.InventoryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination, "Enabled" JSON..= enabled,
                            "Id" JSON..= id,
                            "IncludedObjectVersions" JSON..= includedObjectVersions,
                            "ScheduleFrequency" JSON..= scheduleFrequency]
                           (Prelude.catMaybes
                              [(JSON..=) "OptionalFields" Prelude.<$> optionalFields,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON InventoryConfigurationProperty where
  toJSON InventoryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination, "Enabled" JSON..= enabled,
               "Id" JSON..= id,
               "IncludedObjectVersions" JSON..= includedObjectVersions,
               "ScheduleFrequency" JSON..= scheduleFrequency]
              (Prelude.catMaybes
                 [(JSON..=) "OptionalFields" Prelude.<$> optionalFields,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Destination" InventoryConfigurationProperty where
  type PropertyType "Destination" InventoryConfigurationProperty = DestinationProperty
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty {destination = newValue, ..}
instance Property "Enabled" InventoryConfigurationProperty where
  type PropertyType "Enabled" InventoryConfigurationProperty = Value Prelude.Bool
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty {enabled = newValue, ..}
instance Property "Id" InventoryConfigurationProperty where
  type PropertyType "Id" InventoryConfigurationProperty = Value Prelude.Text
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty {id = newValue, ..}
instance Property "IncludedObjectVersions" InventoryConfigurationProperty where
  type PropertyType "IncludedObjectVersions" InventoryConfigurationProperty = Value Prelude.Text
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty
        {includedObjectVersions = newValue, ..}
instance Property "OptionalFields" InventoryConfigurationProperty where
  type PropertyType "OptionalFields" InventoryConfigurationProperty = ValueList Prelude.Text
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty
        {optionalFields = Prelude.pure newValue, ..}
instance Property "Prefix" InventoryConfigurationProperty where
  type PropertyType "Prefix" InventoryConfigurationProperty = Value Prelude.Text
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "ScheduleFrequency" InventoryConfigurationProperty where
  type PropertyType "ScheduleFrequency" InventoryConfigurationProperty = Value Prelude.Text
  set newValue InventoryConfigurationProperty {..}
    = InventoryConfigurationProperty {scheduleFrequency = newValue, ..}