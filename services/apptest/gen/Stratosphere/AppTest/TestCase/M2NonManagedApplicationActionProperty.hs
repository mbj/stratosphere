module Stratosphere.AppTest.TestCase.M2NonManagedApplicationActionProperty (
        M2NonManagedApplicationActionProperty(..),
        mkM2NonManagedApplicationActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data M2NonManagedApplicationActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2nonmanagedapplicationaction.html>
    M2NonManagedApplicationActionProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2nonmanagedapplicationaction.html#cfn-apptest-testcase-m2nonmanagedapplicationaction-actiontype>
                                           actionType :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2nonmanagedapplicationaction.html#cfn-apptest-testcase-m2nonmanagedapplicationaction-resource>
                                           resource :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkM2NonManagedApplicationActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> M2NonManagedApplicationActionProperty
mkM2NonManagedApplicationActionProperty actionType resource
  = M2NonManagedApplicationActionProperty
      {haddock_workaround_ = (), actionType = actionType,
       resource = resource}
instance ToResourceProperties M2NonManagedApplicationActionProperty where
  toResourceProperties M2NonManagedApplicationActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.M2NonManagedApplicationAction",
         supportsTags = Prelude.False,
         properties = ["ActionType" JSON..= actionType,
                       "Resource" JSON..= resource]}
instance JSON.ToJSON M2NonManagedApplicationActionProperty where
  toJSON M2NonManagedApplicationActionProperty {..}
    = JSON.object
        ["ActionType" JSON..= actionType, "Resource" JSON..= resource]
instance Property "ActionType" M2NonManagedApplicationActionProperty where
  type PropertyType "ActionType" M2NonManagedApplicationActionProperty = Value Prelude.Text
  set newValue M2NonManagedApplicationActionProperty {..}
    = M2NonManagedApplicationActionProperty {actionType = newValue, ..}
instance Property "Resource" M2NonManagedApplicationActionProperty where
  type PropertyType "Resource" M2NonManagedApplicationActionProperty = Value Prelude.Text
  set newValue M2NonManagedApplicationActionProperty {..}
    = M2NonManagedApplicationActionProperty {resource = newValue, ..}