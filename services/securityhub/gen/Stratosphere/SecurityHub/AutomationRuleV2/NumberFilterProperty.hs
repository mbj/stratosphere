module Stratosphere.SecurityHub.AutomationRuleV2.NumberFilterProperty (
        NumberFilterProperty(..), mkNumberFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumberFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-numberfilter.html>
    NumberFilterProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-numberfilter.html#cfn-securityhub-automationrulev2-numberfilter-eq>
                          eq :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-numberfilter.html#cfn-securityhub-automationrulev2-numberfilter-gte>
                          gte :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-numberfilter.html#cfn-securityhub-automationrulev2-numberfilter-lte>
                          lte :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumberFilterProperty :: NumberFilterProperty
mkNumberFilterProperty
  = NumberFilterProperty
      {haddock_workaround_ = (), eq = Prelude.Nothing,
       gte = Prelude.Nothing, lte = Prelude.Nothing}
instance ToResourceProperties NumberFilterProperty where
  toResourceProperties NumberFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.NumberFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Eq" Prelude.<$> eq, (JSON..=) "Gte" Prelude.<$> gte,
                            (JSON..=) "Lte" Prelude.<$> lte])}
instance JSON.ToJSON NumberFilterProperty where
  toJSON NumberFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Eq" Prelude.<$> eq, (JSON..=) "Gte" Prelude.<$> gte,
               (JSON..=) "Lte" Prelude.<$> lte]))
instance Property "Eq" NumberFilterProperty where
  type PropertyType "Eq" NumberFilterProperty = Value Prelude.Double
  set newValue NumberFilterProperty {..}
    = NumberFilterProperty {eq = Prelude.pure newValue, ..}
instance Property "Gte" NumberFilterProperty where
  type PropertyType "Gte" NumberFilterProperty = Value Prelude.Double
  set newValue NumberFilterProperty {..}
    = NumberFilterProperty {gte = Prelude.pure newValue, ..}
instance Property "Lte" NumberFilterProperty where
  type PropertyType "Lte" NumberFilterProperty = Value Prelude.Double
  set newValue NumberFilterProperty {..}
    = NumberFilterProperty {lte = Prelude.pure newValue, ..}