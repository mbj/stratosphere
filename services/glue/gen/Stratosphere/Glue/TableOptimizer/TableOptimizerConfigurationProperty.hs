module Stratosphere.Glue.TableOptimizer.TableOptimizerConfigurationProperty (
        module Exports, TableOptimizerConfigurationProperty(..),
        mkTableOptimizerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.TableOptimizer.OrphanFileDeletionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.TableOptimizer.RetentionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.TableOptimizer.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableOptimizerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html>
    TableOptimizerConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-enabled>
                                         enabled :: (Value Prelude.Bool),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration>
                                         orphanFileDeletionConfiguration :: (Prelude.Maybe OrphanFileDeletionConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration>
                                         retentionConfiguration :: (Prelude.Maybe RetentionConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-rolearn>
                                         roleArn :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-vpcconfiguration>
                                         vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableOptimizerConfigurationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> TableOptimizerConfigurationProperty
mkTableOptimizerConfigurationProperty enabled roleArn
  = TableOptimizerConfigurationProperty
      {haddock_workaround_ = (), enabled = enabled, roleArn = roleArn,
       orphanFileDeletionConfiguration = Prelude.Nothing,
       retentionConfiguration = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties TableOptimizerConfigurationProperty where
  toResourceProperties TableOptimizerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.TableOptimizerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "OrphanFileDeletionConfiguration"
                                 Prelude.<$> orphanFileDeletionConfiguration,
                               (JSON..=) "RetentionConfiguration"
                                 Prelude.<$> retentionConfiguration,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON TableOptimizerConfigurationProperty where
  toJSON TableOptimizerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "OrphanFileDeletionConfiguration"
                    Prelude.<$> orphanFileDeletionConfiguration,
                  (JSON..=) "RetentionConfiguration"
                    Prelude.<$> retentionConfiguration,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "Enabled" TableOptimizerConfigurationProperty where
  type PropertyType "Enabled" TableOptimizerConfigurationProperty = Value Prelude.Bool
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty {enabled = newValue, ..}
instance Property "OrphanFileDeletionConfiguration" TableOptimizerConfigurationProperty where
  type PropertyType "OrphanFileDeletionConfiguration" TableOptimizerConfigurationProperty = OrphanFileDeletionConfigurationProperty
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty
        {orphanFileDeletionConfiguration = Prelude.pure newValue, ..}
instance Property "RetentionConfiguration" TableOptimizerConfigurationProperty where
  type PropertyType "RetentionConfiguration" TableOptimizerConfigurationProperty = RetentionConfigurationProperty
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty
        {retentionConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" TableOptimizerConfigurationProperty where
  type PropertyType "RoleArn" TableOptimizerConfigurationProperty = Value Prelude.Text
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty {roleArn = newValue, ..}
instance Property "VpcConfiguration" TableOptimizerConfigurationProperty where
  type PropertyType "VpcConfiguration" TableOptimizerConfigurationProperty = VpcConfigurationProperty
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}