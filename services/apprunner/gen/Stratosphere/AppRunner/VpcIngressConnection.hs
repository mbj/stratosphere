module Stratosphere.AppRunner.VpcIngressConnection (
        module Exports, VpcIngressConnection(..), mkVpcIngressConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.VpcIngressConnection.IngressVpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VpcIngressConnection
  = VpcIngressConnection {ingressVpcConfiguration :: IngressVpcConfigurationProperty,
                          serviceArn :: (Value Prelude.Text),
                          tags :: (Prelude.Maybe [Tag]),
                          vpcIngressConnectionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcIngressConnection ::
  IngressVpcConfigurationProperty
  -> Value Prelude.Text -> VpcIngressConnection
mkVpcIngressConnection ingressVpcConfiguration serviceArn
  = VpcIngressConnection
      {ingressVpcConfiguration = ingressVpcConfiguration,
       serviceArn = serviceArn, tags = Prelude.Nothing,
       vpcIngressConnectionName = Prelude.Nothing}
instance ToResourceProperties VpcIngressConnection where
  toResourceProperties VpcIngressConnection {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::VpcIngressConnection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IngressVpcConfiguration" JSON..= ingressVpcConfiguration,
                            "ServiceArn" JSON..= serviceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcIngressConnectionName"
                                 Prelude.<$> vpcIngressConnectionName]))}
instance JSON.ToJSON VpcIngressConnection where
  toJSON VpcIngressConnection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IngressVpcConfiguration" JSON..= ingressVpcConfiguration,
               "ServiceArn" JSON..= serviceArn]
              (Prelude.catMaybes
                 [(JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcIngressConnectionName"
                    Prelude.<$> vpcIngressConnectionName])))
instance Property "IngressVpcConfiguration" VpcIngressConnection where
  type PropertyType "IngressVpcConfiguration" VpcIngressConnection = IngressVpcConfigurationProperty
  set newValue VpcIngressConnection {..}
    = VpcIngressConnection {ingressVpcConfiguration = newValue, ..}
instance Property "ServiceArn" VpcIngressConnection where
  type PropertyType "ServiceArn" VpcIngressConnection = Value Prelude.Text
  set newValue VpcIngressConnection {..}
    = VpcIngressConnection {serviceArn = newValue, ..}
instance Property "Tags" VpcIngressConnection where
  type PropertyType "Tags" VpcIngressConnection = [Tag]
  set newValue VpcIngressConnection {..}
    = VpcIngressConnection {tags = Prelude.pure newValue, ..}
instance Property "VpcIngressConnectionName" VpcIngressConnection where
  type PropertyType "VpcIngressConnectionName" VpcIngressConnection = Value Prelude.Text
  set newValue VpcIngressConnection {..}
    = VpcIngressConnection
        {vpcIngressConnectionName = Prelude.pure newValue, ..}