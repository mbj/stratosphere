module Stratosphere.ResourceAttributes.ResourceSignal where

import Prelude
import Stratosphere.ResourceImports

-- | Full data type definition for ResourceSignal. See 'resourceSignal' for a
-- more convenient constructor.
data ResourceSignal =
  ResourceSignal
  { _resourceSignalCount :: Maybe (Val Integer)
  , _resourceSignalTimeout :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ResourceSignal where
  toJSON ResourceSignal{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON) _resourceSignalCount
    , fmap (("Timeout",) . toJSON) _resourceSignalTimeout
    ]

-- | Constructor for 'ResourceSignal' containing required fields as arguments.
resourceSignal
  :: ResourceSignal
resourceSignal  =
  ResourceSignal
  { _resourceSignalCount = Nothing
  , _resourceSignalTimeout = Nothing
  }

-- | The number of success signals AWS CloudFormation must receive before it
-- sets the resource status as CREATE_COMPLETE. If the resource receives a
-- failure signal or doesn't receive the specified number of signals before
-- the timeout period expires, the resource creation fails and AWS
-- CloudFormation rolls the stack back.
rsCount :: Lens' ResourceSignal (Maybe (Val Integer))
rsCount = lens _resourceSignalCount (\s a -> s { _resourceSignalCount = a })

-- | The length of time that AWS CloudFormation waits for the number of
-- signals that was specified in the Count property. The timeout period starts
-- after AWS CloudFormation starts creating the resource, and the timeout
-- expires no sooner than the time you specify but can occur shortly
-- thereafter. The maximum time that you can specify is 12 hours. The value
-- must be in ISO8601 duration format, in the form: "PT#H#M#S", where each #
-- is the number of hours, minutes, and seconds, respectively. For best
-- results, specify a period of time that gives your instances plenty of time
-- to get up and running. A shorter timeout can cause a rollback.
rsTimeout :: Lens' ResourceSignal (Maybe (Val Text))
rsTimeout = lens _resourceSignalTimeout (\s a -> s { _resourceSignalTimeout = a })
