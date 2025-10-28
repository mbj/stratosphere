module Stratosphere.ElasticLoadBalancingV2.TrustStoreRevocation (
        module Exports, TrustStoreRevocation(..), mkTrustStoreRevocation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.TrustStoreRevocation.RevocationContentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrustStoreRevocation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-truststorerevocation.html>
    TrustStoreRevocation {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-truststorerevocation.html#cfn-elasticloadbalancingv2-truststorerevocation-revocationcontents>
                          revocationContents :: (Prelude.Maybe [RevocationContentProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-truststorerevocation.html#cfn-elasticloadbalancingv2-truststorerevocation-truststorearn>
                          trustStoreArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustStoreRevocation :: TrustStoreRevocation
mkTrustStoreRevocation
  = TrustStoreRevocation
      {haddock_workaround_ = (), revocationContents = Prelude.Nothing,
       trustStoreArn = Prelude.Nothing}
instance ToResourceProperties TrustStoreRevocation where
  toResourceProperties TrustStoreRevocation {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TrustStoreRevocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RevocationContents" Prelude.<$> revocationContents,
                            (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn])}
instance JSON.ToJSON TrustStoreRevocation where
  toJSON TrustStoreRevocation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RevocationContents" Prelude.<$> revocationContents,
               (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn]))
instance Property "RevocationContents" TrustStoreRevocation where
  type PropertyType "RevocationContents" TrustStoreRevocation = [RevocationContentProperty]
  set newValue TrustStoreRevocation {..}
    = TrustStoreRevocation
        {revocationContents = Prelude.pure newValue, ..}
instance Property "TrustStoreArn" TrustStoreRevocation where
  type PropertyType "TrustStoreArn" TrustStoreRevocation = Value Prelude.Text
  set newValue TrustStoreRevocation {..}
    = TrustStoreRevocation {trustStoreArn = Prelude.pure newValue, ..}