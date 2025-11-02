module Stratosphere.NetworkFirewall.FirewallPolicy.PublishMetricActionProperty (
        module Exports, PublishMetricActionProperty(..),
        mkPublishMetricActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.DimensionProperty as Exports
import Stratosphere.ResourceProperties
data PublishMetricActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-publishmetricaction.html>
    PublishMetricActionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-publishmetricaction.html#cfn-networkfirewall-firewallpolicy-publishmetricaction-dimensions>
                                 dimensions :: [DimensionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublishMetricActionProperty ::
  [DimensionProperty] -> PublishMetricActionProperty
mkPublishMetricActionProperty dimensions
  = PublishMetricActionProperty
      {haddock_workaround_ = (), dimensions = dimensions}
instance ToResourceProperties PublishMetricActionProperty where
  toResourceProperties PublishMetricActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.PublishMetricAction",
         supportsTags = Prelude.False,
         properties = ["Dimensions" JSON..= dimensions]}
instance JSON.ToJSON PublishMetricActionProperty where
  toJSON PublishMetricActionProperty {..}
    = JSON.object ["Dimensions" JSON..= dimensions]
instance Property "Dimensions" PublishMetricActionProperty where
  type PropertyType "Dimensions" PublishMetricActionProperty = [DimensionProperty]
  set newValue PublishMetricActionProperty {..}
    = PublishMetricActionProperty {dimensions = newValue, ..}