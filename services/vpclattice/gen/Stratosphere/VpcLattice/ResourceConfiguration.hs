module Stratosphere.VpcLattice.ResourceConfiguration (
        module Exports, ResourceConfiguration(..), mkResourceConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.ResourceConfiguration.ResourceConfigurationDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResourceConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html>
    ResourceConfiguration {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-allowassociationtosharableservicenetwork>
                           allowAssociationToSharableServiceNetwork :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-portranges>
                           portRanges :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-protocoltype>
                           protocolType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationauthtype>
                           resourceConfigurationAuthType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationdefinition>
                           resourceConfigurationDefinition :: (Prelude.Maybe ResourceConfigurationDefinitionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationgroupid>
                           resourceConfigurationGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationtype>
                           resourceConfigurationType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-resourcegatewayid>
                           resourceGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourceconfiguration.html#cfn-vpclattice-resourceconfiguration-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceConfiguration ::
  Value Prelude.Text -> Value Prelude.Text -> ResourceConfiguration
mkResourceConfiguration name resourceConfigurationType
  = ResourceConfiguration
      {haddock_workaround_ = (), name = name,
       resourceConfigurationType = resourceConfigurationType,
       allowAssociationToSharableServiceNetwork = Prelude.Nothing,
       portRanges = Prelude.Nothing, protocolType = Prelude.Nothing,
       resourceConfigurationAuthType = Prelude.Nothing,
       resourceConfigurationDefinition = Prelude.Nothing,
       resourceConfigurationGroupId = Prelude.Nothing,
       resourceGatewayId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResourceConfiguration where
  toResourceProperties ResourceConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ResourceConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "ResourceConfigurationType" JSON..= resourceConfigurationType]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowAssociationToSharableServiceNetwork"
                                 Prelude.<$> allowAssociationToSharableServiceNetwork,
                               (JSON..=) "PortRanges" Prelude.<$> portRanges,
                               (JSON..=) "ProtocolType" Prelude.<$> protocolType,
                               (JSON..=) "ResourceConfigurationAuthType"
                                 Prelude.<$> resourceConfigurationAuthType,
                               (JSON..=) "ResourceConfigurationDefinition"
                                 Prelude.<$> resourceConfigurationDefinition,
                               (JSON..=) "ResourceConfigurationGroupId"
                                 Prelude.<$> resourceConfigurationGroupId,
                               (JSON..=) "ResourceGatewayId" Prelude.<$> resourceGatewayId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourceConfiguration where
  toJSON ResourceConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "ResourceConfigurationType" JSON..= resourceConfigurationType]
              (Prelude.catMaybes
                 [(JSON..=) "AllowAssociationToSharableServiceNetwork"
                    Prelude.<$> allowAssociationToSharableServiceNetwork,
                  (JSON..=) "PortRanges" Prelude.<$> portRanges,
                  (JSON..=) "ProtocolType" Prelude.<$> protocolType,
                  (JSON..=) "ResourceConfigurationAuthType"
                    Prelude.<$> resourceConfigurationAuthType,
                  (JSON..=) "ResourceConfigurationDefinition"
                    Prelude.<$> resourceConfigurationDefinition,
                  (JSON..=) "ResourceConfigurationGroupId"
                    Prelude.<$> resourceConfigurationGroupId,
                  (JSON..=) "ResourceGatewayId" Prelude.<$> resourceGatewayId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowAssociationToSharableServiceNetwork" ResourceConfiguration where
  type PropertyType "AllowAssociationToSharableServiceNetwork" ResourceConfiguration = Value Prelude.Bool
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration
        {allowAssociationToSharableServiceNetwork = Prelude.pure newValue,
         ..}
instance Property "Name" ResourceConfiguration where
  type PropertyType "Name" ResourceConfiguration = Value Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration {name = newValue, ..}
instance Property "PortRanges" ResourceConfiguration where
  type PropertyType "PortRanges" ResourceConfiguration = ValueList Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration {portRanges = Prelude.pure newValue, ..}
instance Property "ProtocolType" ResourceConfiguration where
  type PropertyType "ProtocolType" ResourceConfiguration = Value Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration {protocolType = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationAuthType" ResourceConfiguration where
  type PropertyType "ResourceConfigurationAuthType" ResourceConfiguration = Value Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration
        {resourceConfigurationAuthType = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationDefinition" ResourceConfiguration where
  type PropertyType "ResourceConfigurationDefinition" ResourceConfiguration = ResourceConfigurationDefinitionProperty
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration
        {resourceConfigurationDefinition = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationGroupId" ResourceConfiguration where
  type PropertyType "ResourceConfigurationGroupId" ResourceConfiguration = Value Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration
        {resourceConfigurationGroupId = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationType" ResourceConfiguration where
  type PropertyType "ResourceConfigurationType" ResourceConfiguration = Value Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration {resourceConfigurationType = newValue, ..}
instance Property "ResourceGatewayId" ResourceConfiguration where
  type PropertyType "ResourceGatewayId" ResourceConfiguration = Value Prelude.Text
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration
        {resourceGatewayId = Prelude.pure newValue, ..}
instance Property "Tags" ResourceConfiguration where
  type PropertyType "Tags" ResourceConfiguration = [Tag]
  set newValue ResourceConfiguration {..}
    = ResourceConfiguration {tags = Prelude.pure newValue, ..}