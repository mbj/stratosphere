module Stratosphere.CloudFront.ResponseHeadersPolicy.StrictTransportSecurityProperty (
        StrictTransportSecurityProperty(..),
        mkStrictTransportSecurityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StrictTransportSecurityProperty
  = StrictTransportSecurityProperty {accessControlMaxAgeSec :: (Value Prelude.Integer),
                                     includeSubdomains :: (Prelude.Maybe (Value Prelude.Bool)),
                                     override :: (Value Prelude.Bool),
                                     preload :: (Prelude.Maybe (Value Prelude.Bool))}
mkStrictTransportSecurityProperty ::
  Value Prelude.Integer
  -> Value Prelude.Bool -> StrictTransportSecurityProperty
mkStrictTransportSecurityProperty accessControlMaxAgeSec override
  = StrictTransportSecurityProperty
      {accessControlMaxAgeSec = accessControlMaxAgeSec,
       override = override, includeSubdomains = Prelude.Nothing,
       preload = Prelude.Nothing}
instance ToResourceProperties StrictTransportSecurityProperty where
  toResourceProperties StrictTransportSecurityProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.StrictTransportSecurity",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessControlMaxAgeSec" JSON..= accessControlMaxAgeSec,
                            "Override" JSON..= override]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeSubdomains" Prelude.<$> includeSubdomains,
                               (JSON..=) "Preload" Prelude.<$> preload]))}
instance JSON.ToJSON StrictTransportSecurityProperty where
  toJSON StrictTransportSecurityProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessControlMaxAgeSec" JSON..= accessControlMaxAgeSec,
               "Override" JSON..= override]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeSubdomains" Prelude.<$> includeSubdomains,
                  (JSON..=) "Preload" Prelude.<$> preload])))
instance Property "AccessControlMaxAgeSec" StrictTransportSecurityProperty where
  type PropertyType "AccessControlMaxAgeSec" StrictTransportSecurityProperty = Value Prelude.Integer
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty
        {accessControlMaxAgeSec = newValue, ..}
instance Property "IncludeSubdomains" StrictTransportSecurityProperty where
  type PropertyType "IncludeSubdomains" StrictTransportSecurityProperty = Value Prelude.Bool
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty
        {includeSubdomains = Prelude.pure newValue, ..}
instance Property "Override" StrictTransportSecurityProperty where
  type PropertyType "Override" StrictTransportSecurityProperty = Value Prelude.Bool
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty {override = newValue, ..}
instance Property "Preload" StrictTransportSecurityProperty where
  type PropertyType "Preload" StrictTransportSecurityProperty = Value Prelude.Bool
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty
        {preload = Prelude.pure newValue, ..}