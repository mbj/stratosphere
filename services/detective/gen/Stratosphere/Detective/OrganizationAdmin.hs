module Stratosphere.Detective.OrganizationAdmin (
        OrganizationAdmin(..), mkOrganizationAdmin
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationAdmin
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-organizationadmin.html>
    OrganizationAdmin {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-organizationadmin.html#cfn-detective-organizationadmin-accountid>
                       accountId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationAdmin :: Value Prelude.Text -> OrganizationAdmin
mkOrganizationAdmin accountId
  = OrganizationAdmin
      {haddock_workaround_ = (), accountId = accountId}
instance ToResourceProperties OrganizationAdmin where
  toResourceProperties OrganizationAdmin {..}
    = ResourceProperties
        {awsType = "AWS::Detective::OrganizationAdmin",
         supportsTags = Prelude.False,
         properties = ["AccountId" JSON..= accountId]}
instance JSON.ToJSON OrganizationAdmin where
  toJSON OrganizationAdmin {..}
    = JSON.object ["AccountId" JSON..= accountId]
instance Property "AccountId" OrganizationAdmin where
  type PropertyType "AccountId" OrganizationAdmin = Value Prelude.Text
  set newValue OrganizationAdmin {..}
    = OrganizationAdmin {accountId = newValue, ..}