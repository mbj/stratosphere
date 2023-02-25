module Stratosphere.SSO.InstanceAccessControlAttributeConfiguration (
        module Exports, InstanceAccessControlAttributeConfiguration(..),
        mkInstanceAccessControlAttributeConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceAccessControlAttributeConfiguration
  = InstanceAccessControlAttributeConfiguration {accessControlAttributes :: (Prelude.Maybe [AccessControlAttributeProperty]),
                                                 instanceArn :: (Value Prelude.Text)}
mkInstanceAccessControlAttributeConfiguration ::
  Value Prelude.Text -> InstanceAccessControlAttributeConfiguration
mkInstanceAccessControlAttributeConfiguration instanceArn
  = InstanceAccessControlAttributeConfiguration
      {instanceArn = instanceArn,
       accessControlAttributes = Prelude.Nothing}
instance ToResourceProperties InstanceAccessControlAttributeConfiguration where
  toResourceProperties
    InstanceAccessControlAttributeConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::SSO::InstanceAccessControlAttributeConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessControlAttributes"
                                 Prelude.<$> accessControlAttributes]))}
instance JSON.ToJSON InstanceAccessControlAttributeConfiguration where
  toJSON InstanceAccessControlAttributeConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn]
              (Prelude.catMaybes
                 [(JSON..=) "AccessControlAttributes"
                    Prelude.<$> accessControlAttributes])))
instance Property "AccessControlAttributes" InstanceAccessControlAttributeConfiguration where
  type PropertyType "AccessControlAttributes" InstanceAccessControlAttributeConfiguration = [AccessControlAttributeProperty]
  set newValue InstanceAccessControlAttributeConfiguration {..}
    = InstanceAccessControlAttributeConfiguration
        {accessControlAttributes = Prelude.pure newValue, ..}
instance Property "InstanceArn" InstanceAccessControlAttributeConfiguration where
  type PropertyType "InstanceArn" InstanceAccessControlAttributeConfiguration = Value Prelude.Text
  set newValue InstanceAccessControlAttributeConfiguration {..}
    = InstanceAccessControlAttributeConfiguration
        {instanceArn = newValue, ..}