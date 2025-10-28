module Stratosphere.RDS.DBProxy (
        module Exports, DBProxy(..), mkDBProxy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.DBProxy.AuthFormatProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBProxy.TagFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBProxy
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html>
    DBProxy {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-auth>
             auth :: [AuthFormatProperty],
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-dbproxyname>
             dBProxyName :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-debuglogging>
             debugLogging :: (Prelude.Maybe (Value Prelude.Bool)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-enginefamily>
             engineFamily :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-idleclienttimeout>
             idleClientTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-requiretls>
             requireTLS :: (Prelude.Maybe (Value Prelude.Bool)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-rolearn>
             roleArn :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-tags>
             tags :: (Prelude.Maybe [TagFormatProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-vpcsecuritygroupids>
             vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-vpcsubnetids>
             vpcSubnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBProxy ::
  [AuthFormatProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> ValueList Prelude.Text -> DBProxy
mkDBProxy auth dBProxyName engineFamily roleArn vpcSubnetIds
  = DBProxy
      {auth = auth, dBProxyName = dBProxyName,
       engineFamily = engineFamily, roleArn = roleArn,
       vpcSubnetIds = vpcSubnetIds, debugLogging = Prelude.Nothing,
       idleClientTimeout = Prelude.Nothing, requireTLS = Prelude.Nothing,
       tags = Prelude.Nothing, vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties DBProxy where
  toResourceProperties DBProxy {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxy", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Auth" JSON..= auth, "DBProxyName" JSON..= dBProxyName,
                            "EngineFamily" JSON..= engineFamily, "RoleArn" JSON..= roleArn,
                            "VpcSubnetIds" JSON..= vpcSubnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "DebugLogging" Prelude.<$> debugLogging,
                               (JSON..=) "IdleClientTimeout" Prelude.<$> idleClientTimeout,
                               (JSON..=) "RequireTLS" Prelude.<$> requireTLS,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON DBProxy where
  toJSON DBProxy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Auth" JSON..= auth, "DBProxyName" JSON..= dBProxyName,
               "EngineFamily" JSON..= engineFamily, "RoleArn" JSON..= roleArn,
               "VpcSubnetIds" JSON..= vpcSubnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "DebugLogging" Prelude.<$> debugLogging,
                  (JSON..=) "IdleClientTimeout" Prelude.<$> idleClientTimeout,
                  (JSON..=) "RequireTLS" Prelude.<$> requireTLS,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "Auth" DBProxy where
  type PropertyType "Auth" DBProxy = [AuthFormatProperty]
  set newValue DBProxy {..} = DBProxy {auth = newValue, ..}
instance Property "DBProxyName" DBProxy where
  type PropertyType "DBProxyName" DBProxy = Value Prelude.Text
  set newValue DBProxy {..} = DBProxy {dBProxyName = newValue, ..}
instance Property "DebugLogging" DBProxy where
  type PropertyType "DebugLogging" DBProxy = Value Prelude.Bool
  set newValue DBProxy {..}
    = DBProxy {debugLogging = Prelude.pure newValue, ..}
instance Property "EngineFamily" DBProxy where
  type PropertyType "EngineFamily" DBProxy = Value Prelude.Text
  set newValue DBProxy {..} = DBProxy {engineFamily = newValue, ..}
instance Property "IdleClientTimeout" DBProxy where
  type PropertyType "IdleClientTimeout" DBProxy = Value Prelude.Integer
  set newValue DBProxy {..}
    = DBProxy {idleClientTimeout = Prelude.pure newValue, ..}
instance Property "RequireTLS" DBProxy where
  type PropertyType "RequireTLS" DBProxy = Value Prelude.Bool
  set newValue DBProxy {..}
    = DBProxy {requireTLS = Prelude.pure newValue, ..}
instance Property "RoleArn" DBProxy where
  type PropertyType "RoleArn" DBProxy = Value Prelude.Text
  set newValue DBProxy {..} = DBProxy {roleArn = newValue, ..}
instance Property "Tags" DBProxy where
  type PropertyType "Tags" DBProxy = [TagFormatProperty]
  set newValue DBProxy {..}
    = DBProxy {tags = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" DBProxy where
  type PropertyType "VpcSecurityGroupIds" DBProxy = ValueList Prelude.Text
  set newValue DBProxy {..}
    = DBProxy {vpcSecurityGroupIds = Prelude.pure newValue, ..}
instance Property "VpcSubnetIds" DBProxy where
  type PropertyType "VpcSubnetIds" DBProxy = ValueList Prelude.Text
  set newValue DBProxy {..} = DBProxy {vpcSubnetIds = newValue, ..}