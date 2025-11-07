module Stratosphere.SecurityHub.AutomationRuleV2.OcsfFindingFiltersProperty (
        module Exports, OcsfFindingFiltersProperty(..),
        mkOcsfFindingFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.CompositeFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcsfFindingFiltersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsffindingfilters.html>
    OcsfFindingFiltersProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsffindingfilters.html#cfn-securityhub-automationrulev2-ocsffindingfilters-compositefilters>
                                compositeFilters :: (Prelude.Maybe [CompositeFilterProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsffindingfilters.html#cfn-securityhub-automationrulev2-ocsffindingfilters-compositeoperator>
                                compositeOperator :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcsfFindingFiltersProperty :: OcsfFindingFiltersProperty
mkOcsfFindingFiltersProperty
  = OcsfFindingFiltersProperty
      {haddock_workaround_ = (), compositeFilters = Prelude.Nothing,
       compositeOperator = Prelude.Nothing}
instance ToResourceProperties OcsfFindingFiltersProperty where
  toResourceProperties OcsfFindingFiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.OcsfFindingFilters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CompositeFilters" Prelude.<$> compositeFilters,
                            (JSON..=) "CompositeOperator" Prelude.<$> compositeOperator])}
instance JSON.ToJSON OcsfFindingFiltersProperty where
  toJSON OcsfFindingFiltersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CompositeFilters" Prelude.<$> compositeFilters,
               (JSON..=) "CompositeOperator" Prelude.<$> compositeOperator]))
instance Property "CompositeFilters" OcsfFindingFiltersProperty where
  type PropertyType "CompositeFilters" OcsfFindingFiltersProperty = [CompositeFilterProperty]
  set newValue OcsfFindingFiltersProperty {..}
    = OcsfFindingFiltersProperty
        {compositeFilters = Prelude.pure newValue, ..}
instance Property "CompositeOperator" OcsfFindingFiltersProperty where
  type PropertyType "CompositeOperator" OcsfFindingFiltersProperty = Value Prelude.Text
  set newValue OcsfFindingFiltersProperty {..}
    = OcsfFindingFiltersProperty
        {compositeOperator = Prelude.pure newValue, ..}