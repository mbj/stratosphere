module Stratosphere.AppTest.TestCase.ResourceActionProperty (
        module Exports, ResourceActionProperty(..),
        mkResourceActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.CloudFormationActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.M2ManagedApplicationActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.M2NonManagedApplicationActionProperty as Exports
import Stratosphere.ResourceProperties
data ResourceActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html>
    ResourceActionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html#cfn-apptest-testcase-resourceaction-cloudformationaction>
                            cloudFormationAction :: (Prelude.Maybe CloudFormationActionProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html#cfn-apptest-testcase-resourceaction-m2managedapplicationaction>
                            m2ManagedApplicationAction :: (Prelude.Maybe M2ManagedApplicationActionProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html#cfn-apptest-testcase-resourceaction-m2nonmanagedapplicationaction>
                            m2NonManagedApplicationAction :: (Prelude.Maybe M2NonManagedApplicationActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceActionProperty :: ResourceActionProperty
mkResourceActionProperty
  = ResourceActionProperty
      {haddock_workaround_ = (), cloudFormationAction = Prelude.Nothing,
       m2ManagedApplicationAction = Prelude.Nothing,
       m2NonManagedApplicationAction = Prelude.Nothing}
instance ToResourceProperties ResourceActionProperty where
  toResourceProperties ResourceActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.ResourceAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudFormationAction" Prelude.<$> cloudFormationAction,
                            (JSON..=) "M2ManagedApplicationAction"
                              Prelude.<$> m2ManagedApplicationAction,
                            (JSON..=) "M2NonManagedApplicationAction"
                              Prelude.<$> m2NonManagedApplicationAction])}
instance JSON.ToJSON ResourceActionProperty where
  toJSON ResourceActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudFormationAction" Prelude.<$> cloudFormationAction,
               (JSON..=) "M2ManagedApplicationAction"
                 Prelude.<$> m2ManagedApplicationAction,
               (JSON..=) "M2NonManagedApplicationAction"
                 Prelude.<$> m2NonManagedApplicationAction]))
instance Property "CloudFormationAction" ResourceActionProperty where
  type PropertyType "CloudFormationAction" ResourceActionProperty = CloudFormationActionProperty
  set newValue ResourceActionProperty {..}
    = ResourceActionProperty
        {cloudFormationAction = Prelude.pure newValue, ..}
instance Property "M2ManagedApplicationAction" ResourceActionProperty where
  type PropertyType "M2ManagedApplicationAction" ResourceActionProperty = M2ManagedApplicationActionProperty
  set newValue ResourceActionProperty {..}
    = ResourceActionProperty
        {m2ManagedApplicationAction = Prelude.pure newValue, ..}
instance Property "M2NonManagedApplicationAction" ResourceActionProperty where
  type PropertyType "M2NonManagedApplicationAction" ResourceActionProperty = M2NonManagedApplicationActionProperty
  set newValue ResourceActionProperty {..}
    = ResourceActionProperty
        {m2NonManagedApplicationAction = Prelude.pure newValue, ..}