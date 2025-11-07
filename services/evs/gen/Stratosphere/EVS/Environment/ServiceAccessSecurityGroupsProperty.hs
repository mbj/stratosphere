module Stratosphere.EVS.Environment.ServiceAccessSecurityGroupsProperty (
        ServiceAccessSecurityGroupsProperty(..),
        mkServiceAccessSecurityGroupsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceAccessSecurityGroupsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-serviceaccesssecuritygroups.html>
    ServiceAccessSecurityGroupsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-serviceaccesssecuritygroups.html#cfn-evs-environment-serviceaccesssecuritygroups-securitygroups>
                                         securityGroups :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceAccessSecurityGroupsProperty ::
  ServiceAccessSecurityGroupsProperty
mkServiceAccessSecurityGroupsProperty
  = ServiceAccessSecurityGroupsProperty
      {haddock_workaround_ = (), securityGroups = Prelude.Nothing}
instance ToResourceProperties ServiceAccessSecurityGroupsProperty where
  toResourceProperties ServiceAccessSecurityGroupsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.ServiceAccessSecurityGroups",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroups" Prelude.<$> securityGroups])}
instance JSON.ToJSON ServiceAccessSecurityGroupsProperty where
  toJSON ServiceAccessSecurityGroupsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroups" Prelude.<$> securityGroups]))
instance Property "SecurityGroups" ServiceAccessSecurityGroupsProperty where
  type PropertyType "SecurityGroups" ServiceAccessSecurityGroupsProperty = ValueList Prelude.Text
  set newValue ServiceAccessSecurityGroupsProperty {..}
    = ServiceAccessSecurityGroupsProperty
        {securityGroups = Prelude.pure newValue, ..}