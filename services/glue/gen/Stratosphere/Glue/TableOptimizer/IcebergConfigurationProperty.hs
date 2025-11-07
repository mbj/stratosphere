module Stratosphere.Glue.TableOptimizer.IcebergConfigurationProperty (
        IcebergConfigurationProperty(..), mkIcebergConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcebergConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration-icebergconfiguration.html>
    IcebergConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration-icebergconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration-icebergconfiguration-location>
                                  location :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration-icebergconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration-icebergconfiguration-orphanfileretentionperiodindays>
                                  orphanFileRetentionPeriodInDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergConfigurationProperty :: IcebergConfigurationProperty
mkIcebergConfigurationProperty
  = IcebergConfigurationProperty
      {haddock_workaround_ = (), location = Prelude.Nothing,
       orphanFileRetentionPeriodInDays = Prelude.Nothing}
instance ToResourceProperties IcebergConfigurationProperty where
  toResourceProperties IcebergConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.IcebergConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Location" Prelude.<$> location,
                            (JSON..=) "OrphanFileRetentionPeriodInDays"
                              Prelude.<$> orphanFileRetentionPeriodInDays])}
instance JSON.ToJSON IcebergConfigurationProperty where
  toJSON IcebergConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Location" Prelude.<$> location,
               (JSON..=) "OrphanFileRetentionPeriodInDays"
                 Prelude.<$> orphanFileRetentionPeriodInDays]))
instance Property "Location" IcebergConfigurationProperty where
  type PropertyType "Location" IcebergConfigurationProperty = Value Prelude.Text
  set newValue IcebergConfigurationProperty {..}
    = IcebergConfigurationProperty
        {location = Prelude.pure newValue, ..}
instance Property "OrphanFileRetentionPeriodInDays" IcebergConfigurationProperty where
  type PropertyType "OrphanFileRetentionPeriodInDays" IcebergConfigurationProperty = Value Prelude.Integer
  set newValue IcebergConfigurationProperty {..}
    = IcebergConfigurationProperty
        {orphanFileRetentionPeriodInDays = Prelude.pure newValue, ..}