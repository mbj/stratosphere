module Stratosphere.SDB.Domain (
        Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Domain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html#cfn-sdb-domain-description>
            description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Domain
mkDomain
  = Domain {haddock_workaround_ = (), description = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::SDB::Domain", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description])}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description]))
instance Property "Description" Domain where
  type PropertyType "Description" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {description = Prelude.pure newValue, ..}