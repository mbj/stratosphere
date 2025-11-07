module Stratosphere.VpcLattice.ResourceConfiguration.ResourceConfigurationDefinitionProperty (
        module Exports, ResourceConfigurationDefinitionProperty(..),
        mkResourceConfigurationDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.ResourceConfiguration.DnsResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceConfigurationDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-resourceconfigurationdefinition.html>
    ResourceConfigurationDefinitionProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-resourceconfigurationdefinition.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationdefinition-arnresource>
                                             arnResource :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-resourceconfigurationdefinition.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationdefinition-dnsresource>
                                             dnsResource :: (Prelude.Maybe DnsResourceProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-resourceconfigurationdefinition.html#cfn-vpclattice-resourceconfiguration-resourceconfigurationdefinition-ipresource>
                                             ipResource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceConfigurationDefinitionProperty ::
  ResourceConfigurationDefinitionProperty
mkResourceConfigurationDefinitionProperty
  = ResourceConfigurationDefinitionProperty
      {haddock_workaround_ = (), arnResource = Prelude.Nothing,
       dnsResource = Prelude.Nothing, ipResource = Prelude.Nothing}
instance ToResourceProperties ResourceConfigurationDefinitionProperty where
  toResourceProperties ResourceConfigurationDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ResourceConfiguration.ResourceConfigurationDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArnResource" Prelude.<$> arnResource,
                            (JSON..=) "DnsResource" Prelude.<$> dnsResource,
                            (JSON..=) "IpResource" Prelude.<$> ipResource])}
instance JSON.ToJSON ResourceConfigurationDefinitionProperty where
  toJSON ResourceConfigurationDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArnResource" Prelude.<$> arnResource,
               (JSON..=) "DnsResource" Prelude.<$> dnsResource,
               (JSON..=) "IpResource" Prelude.<$> ipResource]))
instance Property "ArnResource" ResourceConfigurationDefinitionProperty where
  type PropertyType "ArnResource" ResourceConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ResourceConfigurationDefinitionProperty {..}
    = ResourceConfigurationDefinitionProperty
        {arnResource = Prelude.pure newValue, ..}
instance Property "DnsResource" ResourceConfigurationDefinitionProperty where
  type PropertyType "DnsResource" ResourceConfigurationDefinitionProperty = DnsResourceProperty
  set newValue ResourceConfigurationDefinitionProperty {..}
    = ResourceConfigurationDefinitionProperty
        {dnsResource = Prelude.pure newValue, ..}
instance Property "IpResource" ResourceConfigurationDefinitionProperty where
  type PropertyType "IpResource" ResourceConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ResourceConfigurationDefinitionProperty {..}
    = ResourceConfigurationDefinitionProperty
        {ipResource = Prelude.pure newValue, ..}