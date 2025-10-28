module Stratosphere.Lightsail.Container (
        module Exports, Container(..), mkContainer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Container.ContainerServiceDeploymentProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Container.PrivateRegistryAccessProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Container.PublicDomainNameProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Container
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html>
    Container {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-containerservicedeployment>
               containerServiceDeployment :: (Prelude.Maybe ContainerServiceDeploymentProperty),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-isdisabled>
               isDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-power>
               power :: (Value Prelude.Text),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-privateregistryaccess>
               privateRegistryAccess :: (Prelude.Maybe PrivateRegistryAccessProperty),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-publicdomainnames>
               publicDomainNames :: (Prelude.Maybe [PublicDomainNameProperty]),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-scale>
               scale :: (Value Prelude.Integer),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-servicename>
               serviceName :: (Value Prelude.Text),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html#cfn-lightsail-container-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainer ::
  Value Prelude.Text
  -> Value Prelude.Integer -> Value Prelude.Text -> Container
mkContainer power scale serviceName
  = Container
      {power = power, scale = scale, serviceName = serviceName,
       containerServiceDeployment = Prelude.Nothing,
       isDisabled = Prelude.Nothing,
       privateRegistryAccess = Prelude.Nothing,
       publicDomainNames = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Container where
  toResourceProperties Container {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Power" JSON..= power, "Scale" JSON..= scale,
                            "ServiceName" JSON..= serviceName]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerServiceDeployment"
                                 Prelude.<$> containerServiceDeployment,
                               (JSON..=) "IsDisabled" Prelude.<$> isDisabled,
                               (JSON..=) "PrivateRegistryAccess"
                                 Prelude.<$> privateRegistryAccess,
                               (JSON..=) "PublicDomainNames" Prelude.<$> publicDomainNames,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Container where
  toJSON Container {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Power" JSON..= power, "Scale" JSON..= scale,
               "ServiceName" JSON..= serviceName]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerServiceDeployment"
                    Prelude.<$> containerServiceDeployment,
                  (JSON..=) "IsDisabled" Prelude.<$> isDisabled,
                  (JSON..=) "PrivateRegistryAccess"
                    Prelude.<$> privateRegistryAccess,
                  (JSON..=) "PublicDomainNames" Prelude.<$> publicDomainNames,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContainerServiceDeployment" Container where
  type PropertyType "ContainerServiceDeployment" Container = ContainerServiceDeploymentProperty
  set newValue Container {..}
    = Container
        {containerServiceDeployment = Prelude.pure newValue, ..}
instance Property "IsDisabled" Container where
  type PropertyType "IsDisabled" Container = Value Prelude.Bool
  set newValue Container {..}
    = Container {isDisabled = Prelude.pure newValue, ..}
instance Property "Power" Container where
  type PropertyType "Power" Container = Value Prelude.Text
  set newValue Container {..} = Container {power = newValue, ..}
instance Property "PrivateRegistryAccess" Container where
  type PropertyType "PrivateRegistryAccess" Container = PrivateRegistryAccessProperty
  set newValue Container {..}
    = Container {privateRegistryAccess = Prelude.pure newValue, ..}
instance Property "PublicDomainNames" Container where
  type PropertyType "PublicDomainNames" Container = [PublicDomainNameProperty]
  set newValue Container {..}
    = Container {publicDomainNames = Prelude.pure newValue, ..}
instance Property "Scale" Container where
  type PropertyType "Scale" Container = Value Prelude.Integer
  set newValue Container {..} = Container {scale = newValue, ..}
instance Property "ServiceName" Container where
  type PropertyType "ServiceName" Container = Value Prelude.Text
  set newValue Container {..}
    = Container {serviceName = newValue, ..}
instance Property "Tags" Container where
  type PropertyType "Tags" Container = [Tag]
  set newValue Container {..}
    = Container {tags = Prelude.pure newValue, ..}