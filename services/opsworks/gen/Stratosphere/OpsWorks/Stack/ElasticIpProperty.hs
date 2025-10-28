module Stratosphere.OpsWorks.Stack.ElasticIpProperty (
        ElasticIpProperty(..), mkElasticIpProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticIpProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html>
    ElasticIpProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-ip>
                       ip :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-name>
                       name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticIpProperty :: Value Prelude.Text -> ElasticIpProperty
mkElasticIpProperty ip
  = ElasticIpProperty
      {haddock_workaround_ = (), ip = ip, name = Prelude.Nothing}
instance ToResourceProperties ElasticIpProperty where
  toResourceProperties ElasticIpProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack.ElasticIp",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ip" JSON..= ip]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON ElasticIpProperty where
  toJSON ElasticIpProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ip" JSON..= ip]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Ip" ElasticIpProperty where
  type PropertyType "Ip" ElasticIpProperty = Value Prelude.Text
  set newValue ElasticIpProperty {..}
    = ElasticIpProperty {ip = newValue, ..}
instance Property "Name" ElasticIpProperty where
  type PropertyType "Name" ElasticIpProperty = Value Prelude.Text
  set newValue ElasticIpProperty {..}
    = ElasticIpProperty {name = Prelude.pure newValue, ..}