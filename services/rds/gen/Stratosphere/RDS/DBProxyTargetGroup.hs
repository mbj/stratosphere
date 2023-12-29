module Stratosphere.RDS.DBProxyTargetGroup (
        module Exports, DBProxyTargetGroup(..), mkDBProxyTargetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.DBProxyTargetGroup.ConnectionPoolConfigurationInfoFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBProxyTargetGroup
  = DBProxyTargetGroup {connectionPoolConfigurationInfo :: (Prelude.Maybe ConnectionPoolConfigurationInfoFormatProperty),
                        dBClusterIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                        dBInstanceIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                        dBProxyName :: (Value Prelude.Text),
                        targetGroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBProxyTargetGroup ::
  Value Prelude.Text -> Value Prelude.Text -> DBProxyTargetGroup
mkDBProxyTargetGroup dBProxyName targetGroupName
  = DBProxyTargetGroup
      {dBProxyName = dBProxyName, targetGroupName = targetGroupName,
       connectionPoolConfigurationInfo = Prelude.Nothing,
       dBClusterIdentifiers = Prelude.Nothing,
       dBInstanceIdentifiers = Prelude.Nothing}
instance ToResourceProperties DBProxyTargetGroup where
  toResourceProperties DBProxyTargetGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxyTargetGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBProxyName" JSON..= dBProxyName,
                            "TargetGroupName" JSON..= targetGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionPoolConfigurationInfo"
                                 Prelude.<$> connectionPoolConfigurationInfo,
                               (JSON..=) "DBClusterIdentifiers" Prelude.<$> dBClusterIdentifiers,
                               (JSON..=) "DBInstanceIdentifiers"
                                 Prelude.<$> dBInstanceIdentifiers]))}
instance JSON.ToJSON DBProxyTargetGroup where
  toJSON DBProxyTargetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBProxyName" JSON..= dBProxyName,
               "TargetGroupName" JSON..= targetGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionPoolConfigurationInfo"
                    Prelude.<$> connectionPoolConfigurationInfo,
                  (JSON..=) "DBClusterIdentifiers" Prelude.<$> dBClusterIdentifiers,
                  (JSON..=) "DBInstanceIdentifiers"
                    Prelude.<$> dBInstanceIdentifiers])))
instance Property "ConnectionPoolConfigurationInfo" DBProxyTargetGroup where
  type PropertyType "ConnectionPoolConfigurationInfo" DBProxyTargetGroup = ConnectionPoolConfigurationInfoFormatProperty
  set newValue DBProxyTargetGroup {..}
    = DBProxyTargetGroup
        {connectionPoolConfigurationInfo = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifiers" DBProxyTargetGroup where
  type PropertyType "DBClusterIdentifiers" DBProxyTargetGroup = ValueList Prelude.Text
  set newValue DBProxyTargetGroup {..}
    = DBProxyTargetGroup
        {dBClusterIdentifiers = Prelude.pure newValue, ..}
instance Property "DBInstanceIdentifiers" DBProxyTargetGroup where
  type PropertyType "DBInstanceIdentifiers" DBProxyTargetGroup = ValueList Prelude.Text
  set newValue DBProxyTargetGroup {..}
    = DBProxyTargetGroup
        {dBInstanceIdentifiers = Prelude.pure newValue, ..}
instance Property "DBProxyName" DBProxyTargetGroup where
  type PropertyType "DBProxyName" DBProxyTargetGroup = Value Prelude.Text
  set newValue DBProxyTargetGroup {..}
    = DBProxyTargetGroup {dBProxyName = newValue, ..}
instance Property "TargetGroupName" DBProxyTargetGroup where
  type PropertyType "TargetGroupName" DBProxyTargetGroup = Value Prelude.Text
  set newValue DBProxyTargetGroup {..}
    = DBProxyTargetGroup {targetGroupName = newValue, ..}