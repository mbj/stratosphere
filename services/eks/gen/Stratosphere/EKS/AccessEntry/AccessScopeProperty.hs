module Stratosphere.EKS.AccessEntry.AccessScopeProperty (
        AccessScopeProperty(..), mkAccessScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessScopeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-accessentry-accessscope.html>
    AccessScopeProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-accessentry-accessscope.html#cfn-eks-accessentry-accessscope-namespaces>
                         namespaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-accessentry-accessscope.html#cfn-eks-accessentry-accessscope-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessScopeProperty :: Value Prelude.Text -> AccessScopeProperty
mkAccessScopeProperty type'
  = AccessScopeProperty
      {haddock_workaround_ = (), type' = type',
       namespaces = Prelude.Nothing}
instance ToResourceProperties AccessScopeProperty where
  toResourceProperties AccessScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::AccessEntry.AccessScope",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Namespaces" Prelude.<$> namespaces]))}
instance JSON.ToJSON AccessScopeProperty where
  toJSON AccessScopeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Namespaces" Prelude.<$> namespaces])))
instance Property "Namespaces" AccessScopeProperty where
  type PropertyType "Namespaces" AccessScopeProperty = ValueList Prelude.Text
  set newValue AccessScopeProperty {..}
    = AccessScopeProperty {namespaces = Prelude.pure newValue, ..}
instance Property "Type" AccessScopeProperty where
  type PropertyType "Type" AccessScopeProperty = Value Prelude.Text
  set newValue AccessScopeProperty {..}
    = AccessScopeProperty {type' = newValue, ..}