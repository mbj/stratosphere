module Stratosphere.EMR.InstanceFleetConfig.InstanceTypeConfigProperty (
        module Exports, InstanceTypeConfigProperty(..),
        mkInstanceTypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.EbsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceTypeConfigProperty
  = InstanceTypeConfigProperty {bidPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                bidPriceAsPercentageOfOnDemandPrice :: (Prelude.Maybe (Value Prelude.Double)),
                                configurations :: (Prelude.Maybe [ConfigurationProperty]),
                                customAmiId :: (Prelude.Maybe (Value Prelude.Text)),
                                ebsConfiguration :: (Prelude.Maybe EbsConfigurationProperty),
                                instanceType :: (Value Prelude.Text),
                                weightedCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
mkInstanceTypeConfigProperty ::
  Value Prelude.Text -> InstanceTypeConfigProperty
mkInstanceTypeConfigProperty instanceType
  = InstanceTypeConfigProperty
      {instanceType = instanceType, bidPrice = Prelude.Nothing,
       bidPriceAsPercentageOfOnDemandPrice = Prelude.Nothing,
       configurations = Prelude.Nothing, customAmiId = Prelude.Nothing,
       ebsConfiguration = Prelude.Nothing,
       weightedCapacity = Prelude.Nothing}
instance ToResourceProperties InstanceTypeConfigProperty where
  toResourceProperties InstanceTypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.InstanceTypeConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "BidPrice" Prelude.<$> bidPrice,
                               (JSON..=) "BidPriceAsPercentageOfOnDemandPrice"
                                 Prelude.<$> bidPriceAsPercentageOfOnDemandPrice,
                               (JSON..=) "Configurations" Prelude.<$> configurations,
                               (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                               (JSON..=) "EbsConfiguration" Prelude.<$> ebsConfiguration,
                               (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity]))}
instance JSON.ToJSON InstanceTypeConfigProperty where
  toJSON InstanceTypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "BidPrice" Prelude.<$> bidPrice,
                  (JSON..=) "BidPriceAsPercentageOfOnDemandPrice"
                    Prelude.<$> bidPriceAsPercentageOfOnDemandPrice,
                  (JSON..=) "Configurations" Prelude.<$> configurations,
                  (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                  (JSON..=) "EbsConfiguration" Prelude.<$> ebsConfiguration,
                  (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity])))
instance Property "BidPrice" InstanceTypeConfigProperty where
  type PropertyType "BidPrice" InstanceTypeConfigProperty = Value Prelude.Text
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty {bidPrice = Prelude.pure newValue, ..}
instance Property "BidPriceAsPercentageOfOnDemandPrice" InstanceTypeConfigProperty where
  type PropertyType "BidPriceAsPercentageOfOnDemandPrice" InstanceTypeConfigProperty = Value Prelude.Double
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty
        {bidPriceAsPercentageOfOnDemandPrice = Prelude.pure newValue, ..}
instance Property "Configurations" InstanceTypeConfigProperty where
  type PropertyType "Configurations" InstanceTypeConfigProperty = [ConfigurationProperty]
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty
        {configurations = Prelude.pure newValue, ..}
instance Property "CustomAmiId" InstanceTypeConfigProperty where
  type PropertyType "CustomAmiId" InstanceTypeConfigProperty = Value Prelude.Text
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty
        {customAmiId = Prelude.pure newValue, ..}
instance Property "EbsConfiguration" InstanceTypeConfigProperty where
  type PropertyType "EbsConfiguration" InstanceTypeConfigProperty = EbsConfigurationProperty
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty
        {ebsConfiguration = Prelude.pure newValue, ..}
instance Property "InstanceType" InstanceTypeConfigProperty where
  type PropertyType "InstanceType" InstanceTypeConfigProperty = Value Prelude.Text
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty {instanceType = newValue, ..}
instance Property "WeightedCapacity" InstanceTypeConfigProperty where
  type PropertyType "WeightedCapacity" InstanceTypeConfigProperty = Value Prelude.Integer
  set newValue InstanceTypeConfigProperty {..}
    = InstanceTypeConfigProperty
        {weightedCapacity = Prelude.pure newValue, ..}