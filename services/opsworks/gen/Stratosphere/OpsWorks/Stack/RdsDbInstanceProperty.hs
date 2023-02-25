module Stratosphere.OpsWorks.Stack.RdsDbInstanceProperty (
        RdsDbInstanceProperty(..), mkRdsDbInstanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsDbInstanceProperty
  = RdsDbInstanceProperty {dbPassword :: (Value Prelude.Text),
                           dbUser :: (Value Prelude.Text),
                           rdsDbInstanceArn :: (Value Prelude.Text)}
mkRdsDbInstanceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> RdsDbInstanceProperty
mkRdsDbInstanceProperty dbPassword dbUser rdsDbInstanceArn
  = RdsDbInstanceProperty
      {dbPassword = dbPassword, dbUser = dbUser,
       rdsDbInstanceArn = rdsDbInstanceArn}
instance ToResourceProperties RdsDbInstanceProperty where
  toResourceProperties RdsDbInstanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack.RdsDbInstance",
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