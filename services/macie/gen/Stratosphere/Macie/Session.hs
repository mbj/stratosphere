module Stratosphere.Macie.Session (
        Session(..), mkSession
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Session
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-session.html>
    Session {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-session.html#cfn-macie-session-findingpublishingfrequency>
             findingPublishingFrequency :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-session.html#cfn-macie-session-status>
             status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSession :: Session
mkSession
  = Session
      {haddock_workaround_ = (),
       findingPublishingFrequency = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties Session where
  toResourceProperties Session {..}
    = ResourceProperties
        {awsType = "AWS::Macie::Session", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FindingPublishingFrequency"
                              Prelude.<$> findingPublishingFrequency,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON Session where
  toJSON Session {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FindingPublishingFrequency"
                 Prelude.<$> findingPublishingFrequency,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "FindingPublishingFrequency" Session where
  type PropertyType "FindingPublishingFrequency" Session = Value Prelude.Text
  set newValue Session {..}
    = Session {findingPublishingFrequency = Prelude.pure newValue, ..}
instance Property "Status" Session where
  type PropertyType "Status" Session = Value Prelude.Text
  set newValue Session {..}
    = Session {status = Prelude.pure newValue, ..}