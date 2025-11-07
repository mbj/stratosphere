module Stratosphere.Glue.TableOptimizer.RetentionConfigurationProperty (
        module Exports, RetentionConfigurationProperty(..),
        mkRetentionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.TableOptimizer.IcebergRetentionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RetentionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration.html>
    RetentionConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration-icebergconfiguration>
                                    icebergConfiguration :: (Prelude.Maybe IcebergRetentionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionConfigurationProperty :: RetentionConfigurationProperty
mkRetentionConfigurationProperty
  = RetentionConfigurationProperty
      {haddock_workaround_ = (), icebergConfiguration = Prelude.Nothing}
instance ToResourceProperties RetentionConfigurationProperty where
  toResourceProperties RetentionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.RetentionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IcebergConfiguration"
                              Prelude.<$> icebergConfiguration])}
instance JSON.ToJSON RetentionConfigurationProperty where
  toJSON RetentionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IcebergConfiguration"
                 Prelude.<$> icebergConfiguration]))
instance Property "IcebergConfiguration" RetentionConfigurationProperty where
  type PropertyType "IcebergConfiguration" RetentionConfigurationProperty = IcebergRetentionConfigurationProperty
  set newValue RetentionConfigurationProperty {..}
    = RetentionConfigurationProperty
        {icebergConfiguration = Prelude.pure newValue, ..}