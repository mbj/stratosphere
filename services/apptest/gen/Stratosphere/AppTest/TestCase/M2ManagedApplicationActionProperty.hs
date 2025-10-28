module Stratosphere.AppTest.TestCase.M2ManagedApplicationActionProperty (
        module Exports, M2ManagedApplicationActionProperty(..),
        mkM2ManagedApplicationActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.M2ManagedActionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data M2ManagedApplicationActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedapplicationaction.html>
    M2ManagedApplicationActionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedapplicationaction.html#cfn-apptest-testcase-m2managedapplicationaction-actiontype>
                                        actionType :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedapplicationaction.html#cfn-apptest-testcase-m2managedapplicationaction-properties>
                                        properties :: (Prelude.Maybe M2ManagedActionPropertiesProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedapplicationaction.html#cfn-apptest-testcase-m2managedapplicationaction-resource>
                                        resource :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkM2ManagedApplicationActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> M2ManagedApplicationActionProperty
mkM2ManagedApplicationActionProperty actionType resource
  = M2ManagedApplicationActionProperty
      {haddock_workaround_ = (), actionType = actionType,
       resource = resource, properties = Prelude.Nothing}
instance ToResourceProperties M2ManagedApplicationActionProperty where
  toResourceProperties M2ManagedApplicationActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.M2ManagedApplicationAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionType" JSON..= actionType, "Resource" JSON..= resource]
                           (Prelude.catMaybes
                              [(JSON..=) "Properties" Prelude.<$> properties]))}
instance JSON.ToJSON M2ManagedApplicationActionProperty where
  toJSON M2ManagedApplicationActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionType" JSON..= actionType, "Resource" JSON..= resource]
              (Prelude.catMaybes
                 [(JSON..=) "Properties" Prelude.<$> properties])))
instance Property "ActionType" M2ManagedApplicationActionProperty where
  type PropertyType "ActionType" M2ManagedApplicationActionProperty = Value Prelude.Text
  set newValue M2ManagedApplicationActionProperty {..}
    = M2ManagedApplicationActionProperty {actionType = newValue, ..}
instance Property "Properties" M2ManagedApplicationActionProperty where
  type PropertyType "Properties" M2ManagedApplicationActionProperty = M2ManagedActionPropertiesProperty
  set newValue M2ManagedApplicationActionProperty {..}
    = M2ManagedApplicationActionProperty
        {properties = Prelude.pure newValue, ..}
instance Property "Resource" M2ManagedApplicationActionProperty where
  type PropertyType "Resource" M2ManagedApplicationActionProperty = Value Prelude.Text
  set newValue M2ManagedApplicationActionProperty {..}
    = M2ManagedApplicationActionProperty {resource = newValue, ..}