module Stratosphere.Route53Resolver.OutpostResolver (
        OutpostResolver(..), mkOutpostResolver
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OutpostResolver
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-outpostresolver.html>
    OutpostResolver {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-outpostresolver.html#cfn-route53resolver-outpostresolver-instancecount>
                     instanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-outpostresolver.html#cfn-route53resolver-outpostresolver-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-outpostresolver.html#cfn-route53resolver-outpostresolver-outpostarn>
                     outpostArn :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-outpostresolver.html#cfn-route53resolver-outpostresolver-preferredinstancetype>
                     preferredInstanceType :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-outpostresolver.html#cfn-route53resolver-outpostresolver-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutpostResolver ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> OutpostResolver
mkOutpostResolver name outpostArn preferredInstanceType
  = OutpostResolver
      {haddock_workaround_ = (), name = name, outpostArn = outpostArn,
       preferredInstanceType = preferredInstanceType,
       instanceCount = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties OutpostResolver where
  toResourceProperties OutpostResolver {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::OutpostResolver",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "OutpostArn" JSON..= outpostArn,
                            "PreferredInstanceType" JSON..= preferredInstanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceCount" Prelude.<$> instanceCount,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON OutpostResolver where
  toJSON OutpostResolver {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "OutpostArn" JSON..= outpostArn,
               "PreferredInstanceType" JSON..= preferredInstanceType]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceCount" Prelude.<$> instanceCount,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InstanceCount" OutpostResolver where
  type PropertyType "InstanceCount" OutpostResolver = Value Prelude.Integer
  set newValue OutpostResolver {..}
    = OutpostResolver {instanceCount = Prelude.pure newValue, ..}
instance Property "Name" OutpostResolver where
  type PropertyType "Name" OutpostResolver = Value Prelude.Text
  set newValue OutpostResolver {..}
    = OutpostResolver {name = newValue, ..}
instance Property "OutpostArn" OutpostResolver where
  type PropertyType "OutpostArn" OutpostResolver = Value Prelude.Text
  set newValue OutpostResolver {..}
    = OutpostResolver {outpostArn = newValue, ..}
instance Property "PreferredInstanceType" OutpostResolver where
  type PropertyType "PreferredInstanceType" OutpostResolver = Value Prelude.Text
  set newValue OutpostResolver {..}
    = OutpostResolver {preferredInstanceType = newValue, ..}
instance Property "Tags" OutpostResolver where
  type PropertyType "Tags" OutpostResolver = [Tag]
  set newValue OutpostResolver {..}
    = OutpostResolver {tags = Prelude.pure newValue, ..}