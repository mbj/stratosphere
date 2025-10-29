module Stratosphere.OpsWorks.Layer (
        module Exports, Layer(..), mkLayer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorks.Layer.LifecycleEventConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Layer.LoadBasedAutoScalingProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Layer.RecipesProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Layer.VolumeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Layer
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html>
    Layer {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-attributes>
           attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignelasticips>
           autoAssignElasticIps :: (Value Prelude.Bool),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignpublicips>
           autoAssignPublicIps :: (Value Prelude.Bool),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-custominstanceprofilearn>
           customInstanceProfileArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customjson>
           customJson :: (Prelude.Maybe JSON.Object),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customrecipes>
           customRecipes :: (Prelude.Maybe RecipesProperty),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customsecuritygroupids>
           customSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-enableautohealing>
           enableAutoHealing :: (Value Prelude.Bool),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-installupdatesonboot>
           installUpdatesOnBoot :: (Prelude.Maybe (Value Prelude.Bool)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-lifecycleeventconfiguration>
           lifecycleEventConfiguration :: (Prelude.Maybe LifecycleEventConfigurationProperty),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-loadbasedautoscaling>
           loadBasedAutoScaling :: (Prelude.Maybe LoadBasedAutoScalingProperty),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-name>
           name :: (Value Prelude.Text),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-packages>
           packages :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-shortname>
           shortname :: (Value Prelude.Text),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-stackid>
           stackId :: (Value Prelude.Text),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-type>
           type' :: (Value Prelude.Text),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-useebsoptimizedinstances>
           useEbsOptimizedInstances :: (Prelude.Maybe (Value Prelude.Bool)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-volumeconfigurations>
           volumeConfigurations :: (Prelude.Maybe [VolumeConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayer ::
  Value Prelude.Bool
  -> Value Prelude.Bool
     -> Value Prelude.Bool
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> Value Prelude.Text -> Layer
mkLayer
  autoAssignElasticIps
  autoAssignPublicIps
  enableAutoHealing
  name
  shortname
  stackId
  type'
  = Layer
      {autoAssignElasticIps = autoAssignElasticIps,
       autoAssignPublicIps = autoAssignPublicIps,
       enableAutoHealing = enableAutoHealing, name = name,
       shortname = shortname, stackId = stackId, type' = type',
       attributes = Prelude.Nothing,
       customInstanceProfileArn = Prelude.Nothing,
       customJson = Prelude.Nothing, customRecipes = Prelude.Nothing,
       customSecurityGroupIds = Prelude.Nothing,
       installUpdatesOnBoot = Prelude.Nothing,
       lifecycleEventConfiguration = Prelude.Nothing,
       loadBasedAutoScaling = Prelude.Nothing, packages = Prelude.Nothing,
       tags = Prelude.Nothing, useEbsOptimizedInstances = Prelude.Nothing,
       volumeConfigurations = Prelude.Nothing}
instance ToResourceProperties Layer where
  toResourceProperties Layer {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoAssignElasticIps" JSON..= autoAssignElasticIps,
                            "AutoAssignPublicIps" JSON..= autoAssignPublicIps,
                            "EnableAutoHealing" JSON..= enableAutoHealing, "Name" JSON..= name,
                            "Shortname" JSON..= shortname, "StackId" JSON..= stackId,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "CustomInstanceProfileArn"
                                 Prelude.<$> customInstanceProfileArn,
                               (JSON..=) "CustomJson" Prelude.<$> customJson,
                               (JSON..=) "CustomRecipes" Prelude.<$> customRecipes,
                               (JSON..=) "CustomSecurityGroupIds"
                                 Prelude.<$> customSecurityGroupIds,
                               (JSON..=) "InstallUpdatesOnBoot" Prelude.<$> installUpdatesOnBoot,
                               (JSON..=) "LifecycleEventConfiguration"
                                 Prelude.<$> lifecycleEventConfiguration,
                               (JSON..=) "LoadBasedAutoScaling" Prelude.<$> loadBasedAutoScaling,
                               (JSON..=) "Packages" Prelude.<$> packages,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UseEbsOptimizedInstances"
                                 Prelude.<$> useEbsOptimizedInstances,
                               (JSON..=) "VolumeConfigurations"
                                 Prelude.<$> volumeConfigurations]))}
instance JSON.ToJSON Layer where
  toJSON Layer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoAssignElasticIps" JSON..= autoAssignElasticIps,
               "AutoAssignPublicIps" JSON..= autoAssignPublicIps,
               "EnableAutoHealing" JSON..= enableAutoHealing, "Name" JSON..= name,
               "Shortname" JSON..= shortname, "StackId" JSON..= stackId,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "CustomInstanceProfileArn"
                    Prelude.<$> customInstanceProfileArn,
                  (JSON..=) "CustomJson" Prelude.<$> customJson,
                  (JSON..=) "CustomRecipes" Prelude.<$> customRecipes,
                  (JSON..=) "CustomSecurityGroupIds"
                    Prelude.<$> customSecurityGroupIds,
                  (JSON..=) "InstallUpdatesOnBoot" Prelude.<$> installUpdatesOnBoot,
                  (JSON..=) "LifecycleEventConfiguration"
                    Prelude.<$> lifecycleEventConfiguration,
                  (JSON..=) "LoadBasedAutoScaling" Prelude.<$> loadBasedAutoScaling,
                  (JSON..=) "Packages" Prelude.<$> packages,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UseEbsOptimizedInstances"
                    Prelude.<$> useEbsOptimizedInstances,
                  (JSON..=) "VolumeConfigurations"
                    Prelude.<$> volumeConfigurations])))
instance Property "Attributes" Layer where
  type PropertyType "Attributes" Layer = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Layer {..}
    = Layer {attributes = Prelude.pure newValue, ..}
instance Property "AutoAssignElasticIps" Layer where
  type PropertyType "AutoAssignElasticIps" Layer = Value Prelude.Bool
  set newValue Layer {..}
    = Layer {autoAssignElasticIps = newValue, ..}
instance Property "AutoAssignPublicIps" Layer where
  type PropertyType "AutoAssignPublicIps" Layer = Value Prelude.Bool
  set newValue Layer {..}
    = Layer {autoAssignPublicIps = newValue, ..}
instance Property "CustomInstanceProfileArn" Layer where
  type PropertyType "CustomInstanceProfileArn" Layer = Value Prelude.Text
  set newValue Layer {..}
    = Layer {customInstanceProfileArn = Prelude.pure newValue, ..}
instance Property "CustomJson" Layer where
  type PropertyType "CustomJson" Layer = JSON.Object
  set newValue Layer {..}
    = Layer {customJson = Prelude.pure newValue, ..}
instance Property "CustomRecipes" Layer where
  type PropertyType "CustomRecipes" Layer = RecipesProperty
  set newValue Layer {..}
    = Layer {customRecipes = Prelude.pure newValue, ..}
instance Property "CustomSecurityGroupIds" Layer where
  type PropertyType "CustomSecurityGroupIds" Layer = ValueList Prelude.Text
  set newValue Layer {..}
    = Layer {customSecurityGroupIds = Prelude.pure newValue, ..}
instance Property "EnableAutoHealing" Layer where
  type PropertyType "EnableAutoHealing" Layer = Value Prelude.Bool
  set newValue Layer {..} = Layer {enableAutoHealing = newValue, ..}
instance Property "InstallUpdatesOnBoot" Layer where
  type PropertyType "InstallUpdatesOnBoot" Layer = Value Prelude.Bool
  set newValue Layer {..}
    = Layer {installUpdatesOnBoot = Prelude.pure newValue, ..}
instance Property "LifecycleEventConfiguration" Layer where
  type PropertyType "LifecycleEventConfiguration" Layer = LifecycleEventConfigurationProperty
  set newValue Layer {..}
    = Layer {lifecycleEventConfiguration = Prelude.pure newValue, ..}
instance Property "LoadBasedAutoScaling" Layer where
  type PropertyType "LoadBasedAutoScaling" Layer = LoadBasedAutoScalingProperty
  set newValue Layer {..}
    = Layer {loadBasedAutoScaling = Prelude.pure newValue, ..}
instance Property "Name" Layer where
  type PropertyType "Name" Layer = Value Prelude.Text
  set newValue Layer {..} = Layer {name = newValue, ..}
instance Property "Packages" Layer where
  type PropertyType "Packages" Layer = ValueList Prelude.Text
  set newValue Layer {..}
    = Layer {packages = Prelude.pure newValue, ..}
instance Property "Shortname" Layer where
  type PropertyType "Shortname" Layer = Value Prelude.Text
  set newValue Layer {..} = Layer {shortname = newValue, ..}
instance Property "StackId" Layer where
  type PropertyType "StackId" Layer = Value Prelude.Text
  set newValue Layer {..} = Layer {stackId = newValue, ..}
instance Property "Tags" Layer where
  type PropertyType "Tags" Layer = [Tag]
  set newValue Layer {..} = Layer {tags = Prelude.pure newValue, ..}
instance Property "Type" Layer where
  type PropertyType "Type" Layer = Value Prelude.Text
  set newValue Layer {..} = Layer {type' = newValue, ..}
instance Property "UseEbsOptimizedInstances" Layer where
  type PropertyType "UseEbsOptimizedInstances" Layer = Value Prelude.Bool
  set newValue Layer {..}
    = Layer {useEbsOptimizedInstances = Prelude.pure newValue, ..}
instance Property "VolumeConfigurations" Layer where
  type PropertyType "VolumeConfigurations" Layer = [VolumeConfigurationProperty]
  set newValue Layer {..}
    = Layer {volumeConfigurations = Prelude.pure newValue, ..}