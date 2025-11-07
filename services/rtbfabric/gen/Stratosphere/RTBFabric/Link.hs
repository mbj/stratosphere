module Stratosphere.RTBFabric.Link (
        module Exports, Link(..), mkLink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.LinkAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.LinkLogSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.ModuleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Link
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html>
    Link {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-gatewayid>
          gatewayId :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-httpresponderallowed>
          httpResponderAllowed :: (Prelude.Maybe (Value Prelude.Bool)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-linkattributes>
          linkAttributes :: (Prelude.Maybe LinkAttributesProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-linklogsettings>
          linkLogSettings :: LinkLogSettingsProperty,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-moduleconfigurationlist>
          moduleConfigurationList :: (Prelude.Maybe [ModuleConfigurationProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-peergatewayid>
          peerGatewayId :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-link.html#cfn-rtbfabric-link-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLink ::
  Value Prelude.Text
  -> LinkLogSettingsProperty -> Value Prelude.Text -> Link
mkLink gatewayId linkLogSettings peerGatewayId
  = Link
      {haddock_workaround_ = (), gatewayId = gatewayId,
       linkLogSettings = linkLogSettings, peerGatewayId = peerGatewayId,
       httpResponderAllowed = Prelude.Nothing,
       linkAttributes = Prelude.Nothing,
       moduleConfigurationList = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Link where
  toResourceProperties Link {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GatewayId" JSON..= gatewayId,
                            "LinkLogSettings" JSON..= linkLogSettings,
                            "PeerGatewayId" JSON..= peerGatewayId]
                           (Prelude.catMaybes
                              [(JSON..=) "HttpResponderAllowed" Prelude.<$> httpResponderAllowed,
                               (JSON..=) "LinkAttributes" Prelude.<$> linkAttributes,
                               (JSON..=) "ModuleConfigurationList"
                                 Prelude.<$> moduleConfigurationList,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Link where
  toJSON Link {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GatewayId" JSON..= gatewayId,
               "LinkLogSettings" JSON..= linkLogSettings,
               "PeerGatewayId" JSON..= peerGatewayId]
              (Prelude.catMaybes
                 [(JSON..=) "HttpResponderAllowed" Prelude.<$> httpResponderAllowed,
                  (JSON..=) "LinkAttributes" Prelude.<$> linkAttributes,
                  (JSON..=) "ModuleConfigurationList"
                    Prelude.<$> moduleConfigurationList,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "GatewayId" Link where
  type PropertyType "GatewayId" Link = Value Prelude.Text
  set newValue Link {..} = Link {gatewayId = newValue, ..}
instance Property "HttpResponderAllowed" Link where
  type PropertyType "HttpResponderAllowed" Link = Value Prelude.Bool
  set newValue Link {..}
    = Link {httpResponderAllowed = Prelude.pure newValue, ..}
instance Property "LinkAttributes" Link where
  type PropertyType "LinkAttributes" Link = LinkAttributesProperty
  set newValue Link {..}
    = Link {linkAttributes = Prelude.pure newValue, ..}
instance Property "LinkLogSettings" Link where
  type PropertyType "LinkLogSettings" Link = LinkLogSettingsProperty
  set newValue Link {..} = Link {linkLogSettings = newValue, ..}
instance Property "ModuleConfigurationList" Link where
  type PropertyType "ModuleConfigurationList" Link = [ModuleConfigurationProperty]
  set newValue Link {..}
    = Link {moduleConfigurationList = Prelude.pure newValue, ..}
instance Property "PeerGatewayId" Link where
  type PropertyType "PeerGatewayId" Link = Value Prelude.Text
  set newValue Link {..} = Link {peerGatewayId = newValue, ..}
instance Property "Tags" Link where
  type PropertyType "Tags" Link = [Tag]
  set newValue Link {..} = Link {tags = Prelude.pure newValue, ..}