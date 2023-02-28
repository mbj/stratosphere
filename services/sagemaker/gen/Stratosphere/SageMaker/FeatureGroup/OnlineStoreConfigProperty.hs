module Stratosphere.SageMaker.FeatureGroup.OnlineStoreConfigProperty (
        module Exports, OnlineStoreConfigProperty(..),
        mkOnlineStoreConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.OnlineStoreSecurityConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnlineStoreConfigProperty
  = OnlineStoreConfigProperty {enableOnlineStore :: (Prelude.Maybe (Value Prelude.Bool)),
                               securityConfig :: (Prelude.Maybe OnlineStoreSecurityConfigProperty)}
mkOnlineStoreConfigProperty :: OnlineStoreConfigProperty
mkOnlineStoreConfigProperty
  = OnlineStoreConfigProperty
      {enableOnlineStore = Prelude.Nothing,
       securityConfig = Prelude.Nothing}
instance ToResourceProperties OnlineStoreConfigProperty where
  toResourceProperties OnlineStoreConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.OnlineStoreConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableOnlineStore" Prelude.<$> enableOnlineStore,
                            (JSON..=) "SecurityConfig" Prelude.<$> securityConfig])}
instance JSON.ToJSON OnlineStoreConfigProperty where
  toJSON OnlineStoreConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableOnlineStore" Prelude.<$> enableOnlineStore,
               (JSON..=) "SecurityConfig" Prelude.<$> securityConfig]))
instance Property "EnableOnlineStore" OnlineStoreConfigProperty where
  type PropertyType "EnableOnlineStore" OnlineStoreConfigProperty = Value Prelude.Bool
  set newValue OnlineStoreConfigProperty {..}
    = OnlineStoreConfigProperty
        {enableOnlineStore = Prelude.pure newValue, ..}
instance Property "SecurityConfig" OnlineStoreConfigProperty where
  type PropertyType "SecurityConfig" OnlineStoreConfigProperty = OnlineStoreSecurityConfigProperty
  set newValue OnlineStoreConfigProperty {..}
    = OnlineStoreConfigProperty
        {securityConfig = Prelude.pure newValue, ..}