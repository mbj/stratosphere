module Stratosphere.VpcLattice.Rule.HeaderMatchTypeProperty (
        HeaderMatchTypeProperty(..), mkHeaderMatchTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderMatchTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatchtype.html>
    HeaderMatchTypeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatchtype.html#cfn-vpclattice-rule-headermatchtype-contains>
                             contains :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatchtype.html#cfn-vpclattice-rule-headermatchtype-exact>
                             exact :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatchtype.html#cfn-vpclattice-rule-headermatchtype-prefix>
                             prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderMatchTypeProperty :: HeaderMatchTypeProperty
mkHeaderMatchTypeProperty
  = HeaderMatchTypeProperty
      {haddock_workaround_ = (), contains = Prelude.Nothing,
       exact = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties HeaderMatchTypeProperty where
  toResourceProperties HeaderMatchTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.HeaderMatchType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Contains" Prelude.<$> contains,
                            (JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix])}
instance JSON.ToJSON HeaderMatchTypeProperty where
  toJSON HeaderMatchTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Contains" Prelude.<$> contains,
               (JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix]))
instance Property "Contains" HeaderMatchTypeProperty where
  type PropertyType "Contains" HeaderMatchTypeProperty = Value Prelude.Text
  set newValue HeaderMatchTypeProperty {..}
    = HeaderMatchTypeProperty {contains = Prelude.pure newValue, ..}
instance Property "Exact" HeaderMatchTypeProperty where
  type PropertyType "Exact" HeaderMatchTypeProperty = Value Prelude.Text
  set newValue HeaderMatchTypeProperty {..}
    = HeaderMatchTypeProperty {exact = Prelude.pure newValue, ..}
instance Property "Prefix" HeaderMatchTypeProperty where
  type PropertyType "Prefix" HeaderMatchTypeProperty = Value Prelude.Text
  set newValue HeaderMatchTypeProperty {..}
    = HeaderMatchTypeProperty {prefix = Prelude.pure newValue, ..}