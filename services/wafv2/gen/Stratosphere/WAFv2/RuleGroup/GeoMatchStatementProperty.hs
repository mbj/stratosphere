module Stratosphere.WAFv2.RuleGroup.GeoMatchStatementProperty (
        module Exports, GeoMatchStatementProperty(..),
        mkGeoMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.ForwardedIPConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoMatchStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html>
    GeoMatchStatementProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-countrycodes>
                               countryCodes :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-forwardedipconfig>
                               forwardedIPConfig :: (Prelude.Maybe ForwardedIPConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoMatchStatementProperty :: GeoMatchStatementProperty
mkGeoMatchStatementProperty
  = GeoMatchStatementProperty
      {haddock_workaround_ = (), countryCodes = Prelude.Nothing,
       forwardedIPConfig = Prelude.Nothing}
instance ToResourceProperties GeoMatchStatementProperty where
  toResourceProperties GeoMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.GeoMatchStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CountryCodes" Prelude.<$> countryCodes,
                            (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig])}
instance JSON.ToJSON GeoMatchStatementProperty where
  toJSON GeoMatchStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CountryCodes" Prelude.<$> countryCodes,
               (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig]))
instance Property "CountryCodes" GeoMatchStatementProperty where
  type PropertyType "CountryCodes" GeoMatchStatementProperty = ValueList Prelude.Text
  set newValue GeoMatchStatementProperty {..}
    = GeoMatchStatementProperty
        {countryCodes = Prelude.pure newValue, ..}
instance Property "ForwardedIPConfig" GeoMatchStatementProperty where
  type PropertyType "ForwardedIPConfig" GeoMatchStatementProperty = ForwardedIPConfigurationProperty
  set newValue GeoMatchStatementProperty {..}
    = GeoMatchStatementProperty
        {forwardedIPConfig = Prelude.pure newValue, ..}