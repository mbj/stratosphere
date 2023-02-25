module Stratosphere.ElasticLoadBalancing.LoadBalancer.LBCookieStickinessPolicyProperty (
        LBCookieStickinessPolicyProperty(..),
        mkLBCookieStickinessPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LBCookieStickinessPolicyProperty
  = LBCookieStickinessPolicyProperty {cookieExpirationPeriod :: (Prelude.Maybe (Value Prelude.Text)),
                                      policyName :: (Prelude.Maybe (Value Prelude.Text))}
mkLBCookieStickinessPolicyProperty ::
  LBCookieStickinessPolicyProperty
mkLBCookieStickinessPolicyProperty
  = LBCookieStickinessPolicyProperty
      {cookieExpirationPeriod = Prelude.Nothing,
       policyName = Prelude.Nothing}
instance ToResourceProperties LBCookieStickinessPolicyProperty where
  toResourceProperties LBCookieStickinessPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.LBCookieStickinessPolicy",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CookieExpirationPeriod"
                              Prelude.<$> cookieExpirationPeriod,
                            (JSON..=) "PolicyName" Prelude.<$> policyName])}
instance JSON.ToJSON LBCookieStickinessPolicyProperty where
  toJSON LBCookieStickinessPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CookieExpirationPeriod"
                 Prelude.<$> cookieExpirationPeriod,
               (JSON..=) "PolicyName" Prelude.<$> policyName]))
instance Property "CookieExpirationPeriod" LBCookieStickinessPolicyProperty where
  type PropertyType "CookieExpirationPeriod" LBCookieStickinessPolicyProperty = Value Prelude.Text
  set newValue LBCookieStickinessPolicyProperty {..}
    = LBCookieStickinessPolicyProperty
        {cookieExpirationPeriod = Prelude.pure newValue, ..}
instance Property "PolicyName" LBCookieStickinessPolicyProperty where
  type PropertyType "PolicyName" LBCookieStickinessPolicyProperty = Value Prelude.Text
  set newValue LBCookieStickinessPolicyProperty {..}
    = LBCookieStickinessPolicyProperty
        {policyName = Prelude.pure newValue, ..}