module Stratosphere.Lightsail.Container (
        module Exports, Container(..), mkContainer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Container.ContainerServiceDeploymentProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Container.PublicDomainNameProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Container
  = Container {containerServiceDeployment :: (Prelude.Maybe ContainerServiceDeploymentProperty),
               isDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
               power :: (Value Prelude.Text),
               publicDomainNames :: (Prelude.Maybe [PublicDomainNameProperty]),
               scale :: (Value Prelude.Integer),
               serviceName :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkContainer ::
  Value Prelude.Text
  -> Value Prelude.Integer -> Value Prelude.Text -> Container
mkContainer power scale serviceName
  = Container
      {power = power, scale = scale, serviceName = serviceName,
       containerServiceDeployment = Prelude.Nothing,
       isDisabled = Prelude.Nothing, publicDomainNames = Prelude.Nothing,
       tags = Prelude.Nothing}
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