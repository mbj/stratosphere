module Stratosphere.AppFlow.ConnectorProfile.SnowflakeConnectorProfilePropertiesProperty (
        SnowflakeConnectorProfilePropertiesProperty(..),
        mkSnowflakeConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeConnectorProfilePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html>
    SnowflakeConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-accountname>
                                                 accountName :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-bucketname>
                                                 bucketName :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-bucketprefix>
                                                 bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-privatelinkservicename>
                                                 privateLinkServiceName :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-region>
                                                 region :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-stage>
                                                 stage :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-warehouse>
                                                 warehouse :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeConnectorProfilePropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> SnowflakeConnectorProfilePropertiesProperty
mkSnowflakeConnectorProfilePropertiesProperty
  bucketName
  stage
  warehouse
  = SnowflakeConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), bucketName = bucketName, stage = stage,
       warehouse = warehouse, accountName = Prelude.Nothing,
       bucketPrefix = Prelude.Nothing,
       privateLinkServiceName = Prelude.Nothing, region = Prelude.Nothing}
instance ToResourceProperties SnowflakeConnectorProfilePropertiesProperty where
  toResourceProperties
    SnowflakeConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SnowflakeConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName, "Stage" JSON..= stage,
                            "Warehouse" JSON..= warehouse]
                           (Prelude.catMaybes
                              [(JSON..=) "AccountName" Prelude.<$> accountName,
                               (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "PrivateLinkServiceName"
                                 Prelude.<$> privateLinkServiceName,
                               (JSON..=) "Region" Prelude.<$> region]))}
instance JSON.ToJSON SnowflakeConnectorProfilePropertiesProperty where
  toJSON SnowflakeConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName, "Stage" JSON..= stage,
               "Warehouse" JSON..= warehouse]
              (Prelude.catMaybes
                 [(JSON..=) "AccountName" Prelude.<$> accountName,
                  (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "PrivateLinkServiceName"
                    Prelude.<$> privateLinkServiceName,
                  (JSON..=) "Region" Prelude.<$> region])))
instance Property "AccountName" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "AccountName" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {accountName = Prelude.pure newValue, ..}
instance Property "BucketName" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "BucketName" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {bucketName = newValue, ..}
instance Property "BucketPrefix" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "BucketPrefix" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "PrivateLinkServiceName" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "PrivateLinkServiceName" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {privateLinkServiceName = Prelude.pure newValue, ..}
instance Property "Region" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "Region" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {region = Prelude.pure newValue, ..}
instance Property "Stage" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "Stage" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {stage = newValue, ..}
instance Property "Warehouse" SnowflakeConnectorProfilePropertiesProperty where
  type PropertyType "Warehouse" SnowflakeConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfilePropertiesProperty {..}
    = SnowflakeConnectorProfilePropertiesProperty
        {warehouse = newValue, ..}