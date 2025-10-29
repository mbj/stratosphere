module Stratosphere.QBusiness.DataSource.DataSourceVpcConfigurationProperty (
        DataSourceVpcConfigurationProperty(..),
        mkDataSourceVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceVpcConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-datasourcevpcconfiguration.html>
    DataSourceVpcConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-datasourcevpcconfiguration.html#cfn-qbusiness-datasource-datasourcevpcconfiguration-securitygroupids>
                                        securityGroupIds :: (ValueList Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-datasourcevpcconfiguration.html#cfn-qbusiness-datasource-datasourcevpcconfiguration-subnetids>
                                        subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceVpcConfigurationProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> DataSourceVpcConfigurationProperty
mkDataSourceVpcConfigurationProperty securityGroupIds subnetIds
  = DataSourceVpcConfigurationProperty
      {securityGroupIds = securityGroupIds, subnetIds = subnetIds}
instance ToResourceProperties DataSourceVpcConfigurationProperty where
  toResourceProperties DataSourceVpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.DataSourceVpcConfiguration",
         supportsTags = Prelude.False,
         properties = ["SecurityGroupIds" JSON..= securityGroupIds,
                       "SubnetIds" JSON..= subnetIds]}
instance JSON.ToJSON DataSourceVpcConfigurationProperty where
  toJSON DataSourceVpcConfigurationProperty {..}
    = JSON.object
        ["SecurityGroupIds" JSON..= securityGroupIds,
         "SubnetIds" JSON..= subnetIds]
instance Property "SecurityGroupIds" DataSourceVpcConfigurationProperty where
  type PropertyType "SecurityGroupIds" DataSourceVpcConfigurationProperty = ValueList Prelude.Text
  set newValue DataSourceVpcConfigurationProperty {..}
    = DataSourceVpcConfigurationProperty
        {securityGroupIds = newValue, ..}
instance Property "SubnetIds" DataSourceVpcConfigurationProperty where
  type PropertyType "SubnetIds" DataSourceVpcConfigurationProperty = ValueList Prelude.Text
  set newValue DataSourceVpcConfigurationProperty {..}
    = DataSourceVpcConfigurationProperty {subnetIds = newValue, ..}