module Stratosphere.CustomerProfiles.Integration (
        module Exports, Integration(..), mkIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.FlowDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.ObjectTypeMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Integration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html>
    Integration {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-domainname>
                 domainName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-eventtriggernames>
                 eventTriggerNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-flowdefinition>
                 flowDefinition :: (Prelude.Maybe FlowDefinitionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-objecttypename>
                 objectTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-objecttypenames>
                 objectTypeNames :: (Prelude.Maybe [ObjectTypeMappingProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-integration.html#cfn-customerprofiles-integration-uri>
                 uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegration :: Value Prelude.Text -> Integration
mkIntegration domainName
  = Integration
      {haddock_workaround_ = (), domainName = domainName,
       eventTriggerNames = Prelude.Nothing,
       flowDefinition = Prelude.Nothing, objectTypeName = Prelude.Nothing,
       objectTypeNames = Prelude.Nothing, tags = Prelude.Nothing,
       uri = Prelude.Nothing}
instance ToResourceProperties Integration where
  toResourceProperties Integration {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "EventTriggerNames" Prelude.<$> eventTriggerNames,
                               (JSON..=) "FlowDefinition" Prelude.<$> flowDefinition,
                               (JSON..=) "ObjectTypeName" Prelude.<$> objectTypeName,
                               (JSON..=) "ObjectTypeNames" Prelude.<$> objectTypeNames,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Uri" Prelude.<$> uri]))}
instance JSON.ToJSON Integration where
  toJSON Integration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "EventTriggerNames" Prelude.<$> eventTriggerNames,
                  (JSON..=) "FlowDefinition" Prelude.<$> flowDefinition,
                  (JSON..=) "ObjectTypeName" Prelude.<$> objectTypeName,
                  (JSON..=) "ObjectTypeNames" Prelude.<$> objectTypeNames,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Uri" Prelude.<$> uri])))
instance Property "DomainName" Integration where
  type PropertyType "DomainName" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {domainName = newValue, ..}
instance Property "EventTriggerNames" Integration where
  type PropertyType "EventTriggerNames" Integration = ValueList Prelude.Text
  set newValue Integration {..}
    = Integration {eventTriggerNames = Prelude.pure newValue, ..}
instance Property "FlowDefinition" Integration where
  type PropertyType "FlowDefinition" Integration = FlowDefinitionProperty
  set newValue Integration {..}
    = Integration {flowDefinition = Prelude.pure newValue, ..}
instance Property "ObjectTypeName" Integration where
  type PropertyType "ObjectTypeName" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {objectTypeName = Prelude.pure newValue, ..}
instance Property "ObjectTypeNames" Integration where
  type PropertyType "ObjectTypeNames" Integration = [ObjectTypeMappingProperty]
  set newValue Integration {..}
    = Integration {objectTypeNames = Prelude.pure newValue, ..}
instance Property "Tags" Integration where
  type PropertyType "Tags" Integration = [Tag]
  set newValue Integration {..}
    = Integration {tags = Prelude.pure newValue, ..}
instance Property "Uri" Integration where
  type PropertyType "Uri" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {uri = Prelude.pure newValue, ..}