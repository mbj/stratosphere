module Stratosphere.OpsWorks.Stack.RdsDbInstanceProperty (
        RdsDbInstanceProperty(..), mkRdsDbInstanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsDbInstanceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html>
    RdsDbInstanceProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-dbpassword>
                           dbPassword :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-dbuser>
                           dbUser :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-rdsdbinstancearn>
                           rdsDbInstanceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRdsDbInstanceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> RdsDbInstanceProperty
mkRdsDbInstanceProperty dbPassword dbUser rdsDbInstanceArn
  = RdsDbInstanceProperty
      {haddock_workaround_ = (), dbPassword = dbPassword,
       dbUser = dbUser, rdsDbInstanceArn = rdsDbInstanceArn}
instance ToResourceProperties RdsDbInstanceProperty where
  toResourceProperties RdsDbInstanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack.RdsDbInstance",
         supportsTags = Prelude.False,
         properties = ["DbPassword" JSON..= dbPassword,
                       "DbUser" JSON..= dbUser,
                       "RdsDbInstanceArn" JSON..= rdsDbInstanceArn]}
instance JSON.ToJSON RdsDbInstanceProperty where
  toJSON RdsDbInstanceProperty {..}
    = JSON.object
        ["DbPassword" JSON..= dbPassword, "DbUser" JSON..= dbUser,
         "RdsDbInstanceArn" JSON..= rdsDbInstanceArn]
instance Property "DbPassword" RdsDbInstanceProperty where
  type PropertyType "DbPassword" RdsDbInstanceProperty = Value Prelude.Text
  set newValue RdsDbInstanceProperty {..}
    = RdsDbInstanceProperty {dbPassword = newValue, ..}
instance Property "DbUser" RdsDbInstanceProperty where
  type PropertyType "DbUser" RdsDbInstanceProperty = Value Prelude.Text
  set newValue RdsDbInstanceProperty {..}
    = RdsDbInstanceProperty {dbUser = newValue, ..}
instance Property "RdsDbInstanceArn" RdsDbInstanceProperty where
  type PropertyType "RdsDbInstanceArn" RdsDbInstanceProperty = Value Prelude.Text
  set newValue RdsDbInstanceProperty {..}
    = RdsDbInstanceProperty {rdsDbInstanceArn = newValue, ..}