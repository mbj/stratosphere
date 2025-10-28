module Stratosphere.ElastiCache.SecurityGroupIngress (
        SecurityGroupIngress(..), mkSecurityGroupIngress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityGroupIngress
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html>
    SecurityGroupIngress {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-cachesecuritygroupname>
                          cacheSecurityGroupName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-ec2securitygroupname>
                          eC2SecurityGroupName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-ec2securitygroupownerid>
                          eC2SecurityGroupOwnerId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityGroupIngress ::
  Value Prelude.Text -> Value Prelude.Text -> SecurityGroupIngress
mkSecurityGroupIngress cacheSecurityGroupName eC2SecurityGroupName
  = SecurityGroupIngress
      {haddock_workaround_ = (),
       cacheSecurityGroupName = cacheSecurityGroupName,
       eC2SecurityGroupName = eC2SecurityGroupName,
       eC2SecurityGroupOwnerId = Prelude.Nothing}
instance ToResourceProperties SecurityGroupIngress where
  toResourceProperties SecurityGroupIngress {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::SecurityGroupIngress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CacheSecurityGroupName" JSON..= cacheSecurityGroupName,
                            "EC2SecurityGroupName" JSON..= eC2SecurityGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "EC2SecurityGroupOwnerId"
                                 Prelude.<$> eC2SecurityGroupOwnerId]))}
instance JSON.ToJSON SecurityGroupIngress where
  toJSON SecurityGroupIngress {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CacheSecurityGroupName" JSON..= cacheSecurityGroupName,
               "EC2SecurityGroupName" JSON..= eC2SecurityGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "EC2SecurityGroupOwnerId"
                    Prelude.<$> eC2SecurityGroupOwnerId])))
instance Property "CacheSecurityGroupName" SecurityGroupIngress where
  type PropertyType "CacheSecurityGroupName" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {cacheSecurityGroupName = newValue, ..}
instance Property "EC2SecurityGroupName" SecurityGroupIngress where
  type PropertyType "EC2SecurityGroupName" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {eC2SecurityGroupName = newValue, ..}
instance Property "EC2SecurityGroupOwnerId" SecurityGroupIngress where
  type PropertyType "EC2SecurityGroupOwnerId" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress
        {eC2SecurityGroupOwnerId = Prelude.pure newValue, ..}