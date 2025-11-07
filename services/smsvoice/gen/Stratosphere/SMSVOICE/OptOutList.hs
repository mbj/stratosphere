module Stratosphere.SMSVOICE.OptOutList (
        OptOutList(..), mkOptOutList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OptOutList
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-optoutlist.html>
    OptOutList {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-optoutlist.html#cfn-smsvoice-optoutlist-optoutlistname>
                optOutListName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-optoutlist.html#cfn-smsvoice-optoutlist-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptOutList :: OptOutList
mkOptOutList
  = OptOutList
      {haddock_workaround_ = (), optOutListName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties OptOutList where
  toResourceProperties OptOutList {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::OptOutList",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OptOutListName" Prelude.<$> optOutListName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON OptOutList where
  toJSON OptOutList {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OptOutListName" Prelude.<$> optOutListName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "OptOutListName" OptOutList where
  type PropertyType "OptOutListName" OptOutList = Value Prelude.Text
  set newValue OptOutList {..}
    = OptOutList {optOutListName = Prelude.pure newValue, ..}
instance Property "Tags" OptOutList where
  type PropertyType "Tags" OptOutList = [Tag]
  set newValue OptOutList {..}
    = OptOutList {tags = Prelude.pure newValue, ..}