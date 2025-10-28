module Stratosphere.ResilienceHub.App.ResourceMappingProperty (
        module Exports, ResourceMappingProperty(..),
        mkResourceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResilienceHub.App.PhysicalResourceIdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html>
    ResourceMappingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html#cfn-resiliencehub-app-resourcemapping-ekssourcename>
                             eksSourceName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html#cfn-resiliencehub-app-resourcemapping-logicalstackname>
                             logicalStackName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html#cfn-resiliencehub-app-resourcemapping-mappingtype>
                             mappingType :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html#cfn-resiliencehub-app-resourcemapping-physicalresourceid>
                             physicalResourceId :: PhysicalResourceIdProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html#cfn-resiliencehub-app-resourcemapping-resourcename>
                             resourceName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-resourcemapping.html#cfn-resiliencehub-app-resourcemapping-terraformsourcename>
                             terraformSourceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceMappingProperty ::
  Value Prelude.Text
  -> PhysicalResourceIdProperty -> ResourceMappingProperty
mkResourceMappingProperty mappingType physicalResourceId
  = ResourceMappingProperty
      {haddock_workaround_ = (), mappingType = mappingType,
       physicalResourceId = physicalResourceId,
       eksSourceName = Prelude.Nothing,
       logicalStackName = Prelude.Nothing, resourceName = Prelude.Nothing,
       terraformSourceName = Prelude.Nothing}
instance ToResourceProperties ResourceMappingProperty where
  toResourceProperties ResourceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App.ResourceMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MappingType" JSON..= mappingType,
                            "PhysicalResourceId" JSON..= physicalResourceId]
                           (Prelude.catMaybes
                              [(JSON..=) "EksSourceName" Prelude.<$> eksSourceName,
                               (JSON..=) "LogicalStackName" Prelude.<$> logicalStackName,
                               (JSON..=) "ResourceName" Prelude.<$> resourceName,
                               (JSON..=) "TerraformSourceName" Prelude.<$> terraformSourceName]))}
instance JSON.ToJSON ResourceMappingProperty where
  toJSON ResourceMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MappingType" JSON..= mappingType,
               "PhysicalResourceId" JSON..= physicalResourceId]
              (Prelude.catMaybes
                 [(JSON..=) "EksSourceName" Prelude.<$> eksSourceName,
                  (JSON..=) "LogicalStackName" Prelude.<$> logicalStackName,
                  (JSON..=) "ResourceName" Prelude.<$> resourceName,
                  (JSON..=) "TerraformSourceName" Prelude.<$> terraformSourceName])))
instance Property "EksSourceName" ResourceMappingProperty where
  type PropertyType "EksSourceName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {eksSourceName = Prelude.pure newValue, ..}
instance Property "LogicalStackName" ResourceMappingProperty where
  type PropertyType "LogicalStackName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {logicalStackName = Prelude.pure newValue, ..}
instance Property "MappingType" ResourceMappingProperty where
  type PropertyType "MappingType" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty {mappingType = newValue, ..}
instance Property "PhysicalResourceId" ResourceMappingProperty where
  type PropertyType "PhysicalResourceId" ResourceMappingProperty = PhysicalResourceIdProperty
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty {physicalResourceId = newValue, ..}
instance Property "ResourceName" ResourceMappingProperty where
  type PropertyType "ResourceName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {resourceName = Prelude.pure newValue, ..}
instance Property "TerraformSourceName" ResourceMappingProperty where
  type PropertyType "TerraformSourceName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {terraformSourceName = Prelude.pure newValue, ..}